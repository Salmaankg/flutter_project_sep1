import 'package:flutter/material.dart';

class Gridview3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.count(crossAxisCount: 4,children: List.generate(20, (index) =>
         Container(
           child: Column(
             children: [
               Expanded(child: Image.asset('assets/images/watermelon.png',fit: BoxFit.fill,)),
               Expanded(child: Text('Nature',style: TextStyle(color: Colors.black),))
             ],
           ),
         )),),
   );
  }

}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview3(),
  ));
}