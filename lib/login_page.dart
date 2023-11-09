
import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/frontpage.dart';
import 'package:flutter_project_sep1/homepage.dart';
import 'package:flutter_project_sep1/signup_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  String username= 'Salman';
  String password='abc123';

  final user_controller =TextEditingController();
  final pass_controller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>FrontPage()));},
            icon:Icon(Icons.arrow_back_ios),color: Colors.black,),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 75,bottom: 25),
                child: Text('Login',
                style: GoogleFonts.poppins(
                  fontSize: 50,fontWeight: FontWeight.bold),
                ),
              ),
          Text('Welcome Back! Login With Your Credentials!!',
            style: GoogleFonts.robotoCondensed(
                fontSize: 20,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 15),
              child: TextField(
                controller: user_controller,
                decoration:InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                    ),
                labelText: 'UserName',
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Username',

                ),

              ),
            ),
              Padding(
              padding: EdgeInsets.only(right: 25,left: 25,bottom: 25,top: 15),
              child: TextField(
                obscureText: true,
                controller: pass_controller,
                decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40)
                  ),
                  label: Text('Password'),
                prefixIcon: Icon(Icons.password),
                hintText: 'Password'
              ),),
            ),
            MaterialButton(
              height: 50,
              minWidth: 300,
              onPressed: (){
                if(username==user_controller.text && password == pass_controller.text){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                }
                user_controller.text='';
                pass_controller.text='';
              },
            color: Colors.green,
            shape: const StadiumBorder(),
            child: const Text('Login'),) ,
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                  },
                  child:RichText(
                      text: const TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15
                ),
                        children: [
                          TextSpan(text: "Don't have an Account?"),
                          TextSpan(
                              text: 'SignUp!!',
                          style: TextStyle(fontWeight: FontWeight.bold))
                        ]

              )))
            ],

          ),
        ),
      ),

    );
  }
}
