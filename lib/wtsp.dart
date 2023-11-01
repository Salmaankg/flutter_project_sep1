import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashh extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/aizin.JPG'))
        ),
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/sport.JPG'),width: 70,height: 70,alignment: Alignment(100, 100),),
            Text('HALAND',style: GoogleFonts.italiana(
              fontSize: 50,fontWeight: FontWeight.bold,color: Colors.lightBlue,
            ),)
          ],
        ),
      ),)
    );
  }
  
}
void main(){
  runApp(MaterialApp(home: Splashh(),));
}