import 'package:flutter/material.dart';
import 'package:vzpcc/apisheets/googlesheets2.dart';
import 'package:vzpcc/page/modify_sheets_page.dart';
import 'package:vzpcc/page/pageroute.dart';
import 'apisheets/googlesheets.dart';
import 'page/welcomescreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSheetsApi2.init();
  await UserSheetsApi.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Student Information Form';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Note:'),
            content: Text('Check Every Entry After Saved Successfully'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
          );
        },
      );
    });
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: pageroute(),
      appBar: AppBar(
        title: Text('Excel Data Entry Application'),
      ),
      body: Center(
        child: Image.asset(
          "assets/MB2.jpg",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class AlertButton extends StatefulWidget {
  const AlertButton({super.key});

  @override
  State<AlertButton> createState() => _AlertButtonState();
}

class _AlertButtonState extends State<AlertButton> {
  @override
  Widget build(BuildContext context) {
    // Display the dialog when the widget is built

    // Your remaining widget code here
    return Container(
        // Your widget code
        );
  }
}
