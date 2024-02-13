import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/Listview/Listview4.dart';
import 'package:flutter_project_sep1/Listview/listview2.dart';
import 'package:flutter_project_sep1/Listview/listview3.dart';
import 'package:flutter_project_sep1/Listview/listview_ui.dart';

class Bottomnav extends StatefulWidget {
  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int index=0;
  var screens=[Listview2(),ListView3(),ListView4(),ListUi()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('bottom navigation bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
          },
          currentIndex: index,
          backgroundColor: Colors.white,
          items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'call',
            backgroundColor: Colors.black)
      ]),
      body:screens[index] ,
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Bottomnav(),
  ));
}
