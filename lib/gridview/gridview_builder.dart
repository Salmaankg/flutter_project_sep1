import 'package:flutter/material.dart';

class Gridview2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: GridView.builder(
      //     itemCount: 20,
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10),
      //     itemBuilder: (context,index)=>
      // Container(
      //   color: Colors.yellow,
      //   child: Center(child: Text('USER $index',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 25),)),
      // )
      // ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300,mainAxisExtent:400,crossAxisSpacing: 10,mainAxisSpacing: 10),
          itemBuilder: (context,index)=>
          Container(
      color: Colors.yellow,
      child: Column(
        children: [
          Image.asset('assets/images/watermelon.png'),
          SizedBox(height: 20),
          Text('USER ${index+1}',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 25),),

        ],
      ),
    )),
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview2(),
  ));
}