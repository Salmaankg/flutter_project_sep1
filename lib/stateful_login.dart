import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/frontpage.dart';
import 'package:flutter_project_sep1/homepage.dart';
import 'package:flutter_project_sep1/signup_page.dart';
import 'package:flutter_project_sep1/stateful_signup.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Stateful_Login(),));
}
class Stateful_Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_Stateful_LoginState();

}

class _Stateful_LoginState extends State<Stateful_Login>{
  bool showpwd =true;

  final validkey = GlobalKey<FormState>();  // key for the form to validate its state

@override
Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: const Text('LOGIN PAGE'),
    leading: IconButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>FrontPage()));},
        icon: Icon(Icons.arrow_back_ios)),
  ),
  body: SingleChildScrollView(
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: validkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login page', style: GoogleFonts.poppins(
                  fontSize: 35,fontWeight: FontWeight.bold),),
              const SizedBox(height: 15,),
              TextFormField(
                // value that we typed in form field will stored in email
                validator:(email){
                  if(email!.isEmpty || !email.contains('@')|| !email.contains('gmail.com')){
                    return 'Invalid email';
                  }} ,
                decoration:InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  labelText: 'UserName',
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Username',

                ),
              ),
              const SizedBox(height: 15,),
              TextFormField(
                validator: (password){
                  if(password!.isEmpty||password.length<6){
                    return 'Password must not be empty or length should be greater than 6';
                  }},
                  obscureText: showpwd,
                  decoration:InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            if(showpwd==true){
                              showpwd=false;
                            }else{
                              showpwd=true;
                            }
                          });
                        }, icon: Icon(showpwd != true ? Icons.visibility_off:Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                      ),
                      label: const Text('Password'),
                      prefixIcon: const Icon(Icons.password),
                      hintText: 'Password'
                  )
              ),
              SizedBox(height: 15,),
              MaterialButton(onPressed: (){
                final valid =validkey.currentState!.validate();
                if(valid==true){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                }else{
                       ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(
                               backgroundColor: Colors.red,
                               content: Text('Invalid email or password')));
                }
              },
                color: Colors.green,
                shape: const StadiumBorder(),
                child: const Text('Login'),),
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Stateful_Signup()));
                  },
                  child:RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15
                          ),
                          children: [
                            TextSpan(text: "Not a User ?"),
                            TextSpan(
                                text: 'Register Here !!',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]

                      )))

            ],
          ),
        ),
      ),
    ),
  ),
);
}}