import 'package:flutter/material.dart';

class Gridview5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      //     childrenDelegate: SliverChildBuilderDelegate((context, index) => Container(
      //       child: Column(
      //         children: [
      //           Image.asset('assets/images/watermelon.png',fit: BoxFit.fill,)
      //         ],
      //       ),
      //     ))),


    //   body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    //       childrenDelegate:SliverChildListDelegate([
    //   Card(child: Center(child: Text('Hello'),),),
    //   Card(child: Center(child: Text('Hello'),),),
    //   Card(child: Center(child: Text('Hello'),),),
    //   Card(child: Center(child: Text('Hello'),),),
    // ]),
    // )



      // body: GridView.custom(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
      //     childrenDelegate: SliverChildBuilderDelegate((context, index) =>  Container(
      //       color: Colors.yellow,
      //       child: Column(
      //         children: [
      //           Image.asset('assets/images/watermelon.png'),
      //           SizedBox(height: 20),
      //           Text('USER ${index+1}',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 25),),
      //
      //         ],
      //       ),
      //     ))),

      body: GridView.custom(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
          childrenDelegate: SliverChildListDelegate(List.generate(20, (index) =>
              Card(child: Center(child: Text('Hello'),),),)

          )),
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview5(),
  ));
}