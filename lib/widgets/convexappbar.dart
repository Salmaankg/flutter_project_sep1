import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/Listview/Listview4.dart';
import 'package:flutter_project_sep1/Listview/listview2.dart';
import 'package:flutter_project_sep1/Listview/listview3.dart';
import 'package:flutter_project_sep1/Listview/listview_ui.dart';
import 'package:flutter_project_sep1/frontpage.dart';

class ConvexEx extends StatefulWidget {
  @override
  State<ConvexEx> createState() => _ConvexExState();
}

class _ConvexExState extends State<ConvexEx> {
  int index = 0;
  var screens = [Listview2(), ListView3(), ListView4(), FrontPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convex Bottomappbar'),
      ),
      bottomNavigationBar: ConvexAppBar(
          onTap: (tap) {
            setState(() {
              index = tap;
            });
          },
          style: TabStyle.custom,
          backgroundColor: Colors.black,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.settings, title: 'Settings'),
            TabItem(icon: Icons.call, title: 'Call'),
            TabItem(icon: Icons.chat, title: 'Chat')
          ]),
      body: screens[index],
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ConvexEx(),
  ));
}
