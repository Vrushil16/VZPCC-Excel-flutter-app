import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:vzpcc/main.dart';
import 'package:vzpcc/page/link.dart';
import 'package:vzpcc/page/modify_sheets_page.dart';

import '../widgets/custome_button.dart';
import 'create_sheets_page.dart';

// void main() {
//   runApp( MyApp());
// }

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 3)).then((value) {
  //     Navigator.of(context).pushReplacement(
  //         MaterialPageRoute(builder: (ctx) => const MainScreen()));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FY B.Com'),
        centerTitle: true,
      ),

      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Image(
              image: AssetImage("assets/bcom.png"),
              width: 190,
            ),
            const SizedBox(height: 40),
            const Text(
              "FY B.Com Gujarati",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'CrimsonText',
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Student Information Details Form",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: SpinKitSpinningLines(
                color: Colors.purple,
                size: 50.0,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CustomeButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          transitionsBuilder:
                              (context, animation, animationTime, child) {
                            animation = CurvedAnimation(
                                parent: animation,
                                curve: Curves.fastLinearToSlowEaseIn);
                            return ScaleTransition(
                              alignment: Alignment.center,
                              scale: animation,
                              child: child,
                            );
                          },
                          pageBuilder: (context, animation, animationTime) {
                            return MainScreen();
                          },
                        ));
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MainScreen(),
                    //   ),
                    // );
                  },
                  text: ("Insert Records"),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(
                child: const Text("Update And Delete Records "),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(seconds: 1),
                        transitionsBuilder:
                            (context, animation, animationTime, child) {
                          animation = CurvedAnimation(
                              parent: animation,
                              curve: Curves.fastLinearToSlowEaseIn);
                          return ScaleTransition(
                            alignment: Alignment.center,
                            scale: animation,
                            child: child,
                          );
                        },
                        pageBuilder: (context, animation, animationTime) {
                          return ModifySheetsPageState();
                        },
                      ));

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ModifySheetsPageState(),
                  //   ),
                  // );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CustomeButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          transitionsBuilder:
                              (context, animation, animationTime, child) {
                            animation = CurvedAnimation(
                                parent: animation,
                                curve: Curves.fastLinearToSlowEaseIn);
                            return ScaleTransition(
                              alignment: Alignment.center,
                              scale: animation,
                              child: child,
                            );
                          },
                          pageBuilder: (context, animation, animationTime) {
                            return Link();
                          },
                        ));
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MainScreen(),
                    //   ),
                    // );
                  },
                  text: ("Open Spreadsheet"),
                ),
              ),
            ),
          ],
        ),
      ),
      //   backgroundColor: Colors.white,
      //   body: SafeArea(
      //     child: Center(
      //       child: Padding(
      //         padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Image.asset(
      //               "assets/download.png",
      //               height: 300,
      //             ),

      //             const SizedBox(height: 20),
      //             // custome buttons
      //             SizedBox(
      //               width: double.infinity,
      //               height: 50,
      // child: CustomeButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => MainScreen(),
      //       ),
      //     );
      //   },
      //   text: ("Continue"),
      // ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
    );
  }
}
