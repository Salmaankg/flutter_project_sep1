import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/assignments/staggered_gridview.dart';

class Staa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('appbar',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
            preferredSize: Size(10, 100),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            )),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Staa(),));
}