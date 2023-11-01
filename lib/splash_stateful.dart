import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: Splash2(),));
}
class Splash2 extends StatefulWidget{
  @override
  State<Splash2> createState() => _Splash2State();  // create a mutable state for this widget


}

class _Splash2State extends State<Splash2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:
        // Lottie.asset('assets/animation/love_anime.json',height: 900,width: 900),
     Lottie.network('https://lottie.host/356a0eac-9688-4356-b55c-ad0a9d3044b0/xEZnbhwgAE.json',height: 500,width: 500)
      ),
    );
  }
}