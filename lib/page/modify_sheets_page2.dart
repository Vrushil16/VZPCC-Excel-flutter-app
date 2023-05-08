import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:vzpcc/apisheets/googlesheets2.dart';
import 'package:vzpcc/widgets/button_widget.dart';
import 'package:vzpcc/main.dart';
import 'package:vzpcc/model/user.dart';
import 'package:vzpcc/widgets/user_form_widget.dart';

import '../apisheets/googlesheets.dart';
import '../model/user2.dart';
import '../widgets/navigate_user_widget.dart';
import '../widgets/user_form_widget2.dart';

class ModifySheetsPage2State extends StatefulWidget {
  static const routeName = '/modify-page';

  const ModifySheetsPage2State({super.key});
  @override
  State<ModifySheetsPage2State> createState() => _ModifySheetsPage2StateState();
}

class _ModifySheetsPage2StateState extends State<ModifySheetsPage2State> {
  List<User2> users = [];
  int index = 0;
  @override
  void initState() {
    super.initState();
    getUsers();
  }

  Future getUsers({int index = 0}) async {
    final users = await UserSheetsApi2.getAll();

    setState(() {
      this.users = users;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
        ),
        body: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage("assets/download.png"),
          //       fit: BoxFit.scaleDown),
          // ),
          child: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(16),
              children: [
                UserFormWidget2(
                  user: users.isEmpty ? null : users[index],
                  onSavedUser: (user) async {
                    await UserSheetsApi2.update(user.id!, user.toJson());
                  },
                ),
                const SizedBox(height: 16),
                if (users.isNotEmpty) buildUserControls(),
              ],
            ),
          ),
        ),
      );

  Widget buildUserControls() => Column(
        children: [
          ButtonWidget(
            text: 'Delete',
            onClicked: deleteUser,
          ),
          const SizedBox(height: 40),
          NavigateUsersWidget(
            text: '${index + 1}/${users.length} Users',
            onClickedNext: () {
              final nextIndex = index >= users.length - 1 ? 0 : index + 1;

              setState(() => index = nextIndex);
            },
            onClickedPrevious: () {
              final previousIndex = index <= 0 ? users.length - 1 : index - 1;

              setState(() => index = previousIndex);
            },
          ),
        ],
      );

  Future deleteUser() async {
    final user = users[index];

    await UserSheetsApi2.deleteById(user.id!);

    /// Just for updating ui
    final newIndex = index > 0 ? index - 1 : 0;
    await getUsers(index: newIndex);
  }
}
