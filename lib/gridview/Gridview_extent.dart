import 'package:flutter/material.dart';

class Gridview4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.extent(maxCrossAxisExtent: 120,
    children: List.generate(20, (index) => Column(
      children: [
        Expanded(child: Image.asset('assets/images/watermelon.png',fit: BoxFit.fill,)),
        Expanded(child: Text('Nature'))
      ],
    )),),
  );
  }

}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview4(),
  ));
}