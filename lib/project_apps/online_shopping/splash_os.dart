import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/project_apps/online_shopping/homepage_os.dart';

class SplashOS extends StatefulWidget {
  @override
  State<SplashOS> createState() => _SplashOS();
}

class _SplashOS extends State<SplashOS> {
  @override
  void initState(){
    Timer(const Duration(seconds: 3), () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomepageOS()));
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
            const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.green,
              size: 100,
            ),
            const SizedBox(height: 20,),
            RichText(text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Online',
                  style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 30)
                ),
                TextSpan(
                  text: ' Shopping',
                  style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold)
                )
              ]
            ))
          ],
        ),
      ),
    );
  }
}
void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashOS(),
  ));
}