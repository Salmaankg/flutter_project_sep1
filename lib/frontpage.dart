import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/login_page.dart';
import 'package:flutter_project_sep1/signup_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class FrontPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,bottom: 15),
                child: Text('Hello There!',style: GoogleFonts.robotoCondensed(
                  fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black
                ),),
              ),
              Text('Automatic identity verification which enable you to verify your identity',style: GoogleFonts.poppins(
                fontWeight: FontWeight.normal,fontSize: 15,color: Colors.grey
              ),),
              const Image(image: NetworkImage('https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS2hxgxyQMu1oWu5S7Nenc3RenDkB_C9wW7o_YJ4d12JO_iTT6G')),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: MaterialButton(
                    height: 50,
                    minWidth: 250,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    color: Colors.blueAccent,
                shape: const StadiumBorder(),
                child: const Text('Login'),),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15,top: 15),
                child: MaterialButton(
                  height: 50,
                  minWidth: 250,
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                    },
                  color: Colors.redAccent,
                shape: const StadiumBorder(),
                  child: const Text('Sign up'),),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}