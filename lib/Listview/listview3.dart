import 'package:flutter/material.dart';

class ListView3 extends StatelessWidget{
  void main(){
    runApp(MaterialApp(home: ListView3(),));
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('ListView Builder'),
    ),
    body: ListView.builder(
        itemBuilder: (context, index)=>Card(
          child: Center(
            child: Text('hello',style: TextStyle(fontSize: 20),),
          ),
        ),
  ));
  
  }
  
}