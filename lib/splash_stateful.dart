import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/frontpage.dart';
import 'package:flutter_project_sep1/login_page.dart';
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
  void initState() {
    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FrontPage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:
        // Lottie.asset('assets/animation/love_anime.json',height: 900,width: 900),
     Padding(
       padding: const EdgeInsets.all(30.0),
       child: Lottie.network('https://lottie.host/55a2e999-19fe-4626-9b9b-ab8626cd193f/Ql8EB076JN.json'),
     )
      ),
    );
  }
}