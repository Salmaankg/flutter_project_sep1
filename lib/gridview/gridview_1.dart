import 'package:flutter/material.dart';

class gridview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      // children: List.generate(20, (index) =>
      // Card(
      //   child: Image.asset('assets/images/grapes.png'),
      // )),),
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,mainAxisExtent:100,crossAxisSpacing: 20,mainAxisSpacing: 20),
    children: List.generate(20, (index) =>
    Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Image.asset('assets/images/grapes.png'),
    ))),
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridview1(),
  ));
}