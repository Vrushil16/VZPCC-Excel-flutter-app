import "package:flutter/material.dart";
import 'package:share_plus/share_plus.dart';

import 'package:url_launcher/url_launcher.dart';

class Link2 extends StatefulWidget {
  const Link2({super.key});

  @override
  State<Link2> createState() => _Link2State();
}

class _Link2State extends State<Link2> {
  _launchURL() async {
    const url =
        'https://docs.google.com/spreadsheets/d/1iE3Z8BwC_1rLBLQqACAX3bCgE57RneS4jVta4paLqxg/edit#gid=0';
    if (await launch(url)) {
      await canLaunch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: IconButton(
              icon: Icon(Icons.share_outlined),
              onPressed: () async {
                final urlPreview =
                    'https://docs.google.com/spreadsheets/d/1iE3Z8BwC_1rLBLQqACAX3bCgE57RneS4jVta4paLqxg/edit#gid=0';

                await Share.share(urlPreview);
              },
            ),
          ),
        ],
        title: Center(child: Text("Google Spreadsheet")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Text("Click here to open Google Spreadsheet."),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: _launchURL,
                    child: Text("Spreadsheet"),
                  ),
                ),
              ),
            ),
            Image(
              image: AssetImage("assets/click2.jpg"),
              width: 70,
            ),
          ],
        ),
      ),
    );
  }
}
