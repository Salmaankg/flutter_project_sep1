import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/frontpage.dart';
import 'package:flutter_project_sep1/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>FrontPage()));},
            icon: Icon(Icons.arrow_back_ios),color: Colors.black,),
        elevation: 0,
      ),
    body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign up',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,fontSize: 50,color: Colors.black
            ),),
            Text('Create an Account,its free',
              style: GoogleFonts.robotoCondensed(
              fontSize: 20,fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40)
                  ),
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.person),

                  hintText: 'Username'
                ),),),
           Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                labelText: 'Password',
                prefixIcon: Icon(Icons.password),
                hintText: 'Password'
              ),),),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40)
                ),
                labelText: 'Confirm Password',
                prefixIcon: Icon(Icons.password),
                hintText: 'Confirm Password'
              ),),),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: MaterialButton(
                height: 50,
                minWidth: 250,
                onPressed: (){},
                color: Colors.redAccent,
                shape: const StadiumBorder(),
                child: const Text('Sign up'),
              ),
            ),
            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                      ),
                      children: [
                        TextSpan(text: 'Already have an account?'),
                        TextSpan(text: 'Login',style: TextStyle(fontWeight: FontWeight.bold,))
                      ]
                    )))
          ],
        ),
      ),
    ),
    );

  }
}