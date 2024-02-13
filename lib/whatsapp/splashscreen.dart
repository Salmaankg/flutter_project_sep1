import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/whatsapp/homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WhatSplash(),
  ));
}
class WhatSplash extends StatefulWidget{
  @override
  State<WhatSplash> createState() =>_WhatSplashState();


}

class _WhatSplashState extends State<WhatSplash> {
  @override
  void initState(){
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>WhatsHome()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(padding:EdgeInsets.only(top: 130),
        child: const Icon(FontAwesomeIcons.whatsapp,color: Colors.green,size: 80,)),
            Container(margin:const EdgeInsets.only(top: 300.0),
              child: Text('from',style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.meta,color: Colors.green,),
                Text(' Meta',style: GoogleFonts.italiana(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),)
              ],
            )
          ],
        ),
      ),
    );
  }
}