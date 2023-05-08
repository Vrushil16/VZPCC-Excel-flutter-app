import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:vzpcc/widgets/button_widget.dart';
import 'package:vzpcc/main.dart';
import 'package:vzpcc/model/user.dart';
import 'package:vzpcc/widgets/user_form_widget.dart';

import '../apisheets/googlesheets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
        ),
        body: Container(
          // decoration: const BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage("assets/download.png"),
          //         fit: BoxFit.scaleDown)),
          alignment: Alignment.center,
          padding: EdgeInsets.all(32),
          child: SingleChildScrollView(
            child: UserFormWidget(
              onSavedUser: (user) async {
                final id = await UserSheetsApi.getRowCount() + 1;
                final newUser = user.copy(id: id);
                await UserSheetsApi.insert([newUser.toJson()]);
              },
            ),
          ),
        ),
      );

  // Future insertUsers() async {
  //   final users = [
  //     User(Name: 'Vrushil', Country: 'India', Feedback: 'Good'),
  //   ];
  //   final jsonUsers = users.map((user) => user.toJson()).toList();

  //   await UserSheetsApi.insert(jsonUsers);
  // }
}
