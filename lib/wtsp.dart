import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashh extends StatefulWidget {
  const Splashh({super.key});

  @override
  State<Splashh> createState() => _SplashhState();
}

class _SplashhState extends State<Splashh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        decoration:const BoxDecoration(
        //   image: DecorationImage(
        //       fit: BoxFit.cover,
        //       image: AssetImage('assets/images/sport.JPG'))
       gradient: LinearGradient(colors: [
         Colors.white,
         Colors.black12,
         Colors.black54,
         Colors.black
       ])
        ),
        child:Center(
          child: Column(

          ),
        ) ,


      ),
    );
  }
}
void main(){
  'flutter upgrade';
}