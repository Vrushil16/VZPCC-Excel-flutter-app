import 'package:flutter/material.dart';
import 'package:vzpcc/page/welcomescreen.dart';
import 'package:vzpcc/page/welcomescreen2.dart';

void main() {
  runApp(pageroute());
}

class pageroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              '',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            accountEmail: Text(
              '',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            // currentAccountPicture: CircleAvatar(
            //   child: ClipOval(
            //     child: Image.network(
            //       'https://www.static-contents.youth4work.com/university/Documents/Colleges/collegeLogo/20200517202748.png?v=20200517202748',
            //       width: 90,
            //       height: 90,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: const NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfDPO4M-DHPNN3OQ6Lo4I352VONKKtIRvCxw&usqp=CAU',
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('FY B.Com Gujarati'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomeScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('FY B.Com English'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomeScreen2(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
