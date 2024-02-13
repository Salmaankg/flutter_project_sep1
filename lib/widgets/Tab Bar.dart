import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/Listview/listview2.dart';
import 'package:flutter_project_sep1/Listview/listview_ui.dart';
import 'package:flutter_project_sep1/gridview/gridview_1.dart';
import 'package:flutter_project_sep1/whatsapp_splash.dart';

class TabBarEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('TabBar'),
          bottom: TabBar(tabs: [Text('chat'),Text('call'),Text('Status')]),
          
        ),
        body: TabBarView(children: [gridview1(),Listview2(),ListUi()])
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: TabBarEx(),));
}