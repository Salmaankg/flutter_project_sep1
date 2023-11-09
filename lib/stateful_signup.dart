import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/frontpage.dart';
import 'package:flutter_project_sep1/homepage.dart';
import 'package:flutter_project_sep1/stateful_login.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Stateful_Signup(),));
}
class Stateful_Signup extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_Stateful_SignupState();

}

class _Stateful_SignupState extends State<Stateful_Signup> {
  final namectrl =TextEditingController();
  final namecntrl =TextEditingController();
  final pwdcntrl =TextEditingController();
  final pwdcrl=TextEditingController();
  final phone =TextEditingController();
  final validkey = GlobalKey<FormState>();
  String? pwd;
  bool showpwd1=true;
  bool showpwd2=true;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.yellow,
       leading: IconButton(
           onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>FrontPage()));},
           icon: Icon(Icons.arrow_back_ios),color: Colors.black,),
     title: Text('REGISTRATION', style: GoogleFonts.poppins(
    fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),
     ),),
     body: SingleChildScrollView(
       child: Center(
         child: Form(
           key: validkey,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('Registration Page',style: GoogleFonts.robotoCondensed(
                 fontSize: 35,fontWeight: FontWeight.bold
               ),),
               SizedBox(height: 15,),
               TextFormField(
                 controller:namectrl ,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(40)),
                   labelText: 'Username',
                   prefixIcon: Icon(Icons.person),
                   hintText: 'Name',
                 ),
               ),
               SizedBox(height: 15,),
               TextFormField(
                 controller: namecntrl,
                 validator: (email){
                   if(email!.isEmpty || !email.contains('@')|| !email.contains('gmail.com')){
                     return 'Invalid email';
                   }} ,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(40),),
                   labelText: 'Email',
                   prefixIcon: Icon(Icons.email,color: Colors.red,),
                   hintText: 'Enter Email'
                 ),
               ),
               SizedBox(height: 15,),
               TextFormField(
                 controller: pwdcntrl,
                 validator: (password){
                   pwd=password;

                   if( password!.isEmpty||password.length<6){
                     return 'Password must not be empty or length should be greater than 6';
                   }
                 },
                 obscureText: showpwd1,
                 decoration: InputDecoration(
                   suffixIcon: IconButton(
                       onPressed: (){
                         setState(() {
                           if(showpwd1==true){
                             showpwd1=false;
                           }else{
                             showpwd1=true;
                           }
                         });
                       }, icon: Icon(showpwd1!=true ? Icons.visibility_off
                   :Icons.visibility)),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(40)),
                   labelText: 'Password',
                     prefixIcon: Icon(Icons.password),
                     hintText: 'New password'
                 ),

               ),
               SizedBox(height: 15,),
               TextFormField(
                 controller: pwdcrl,
                 validator: (confirmpassword){
                 if( confirmpassword!.isEmpty||pwd!=confirmpassword){
                   return 'Password must be same';
                 }
               },
                 obscureText: showpwd2,
                 decoration: InputDecoration(
                     suffixIcon: IconButton(
                         onPressed: (){
                           setState(() {
                             if(showpwd2==true){
                               showpwd2=false;
                             }else{
                               showpwd2=true;
                             }
                           });
                         }, icon: Icon(showpwd2!=true ? Icons.visibility_off
                         :Icons.visibility)),
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(40)),
                     labelText: 'Confirm Password',
                     prefixIcon: Icon(Icons.password),
                     hintText: 'confirm password'
                 ),
               ),
               SizedBox(height: 15,),
               TextFormField(
                 controller: phone,
                 validator: (phone){
                   if(phone!.isEmpty || phone.length<10){
                     return 'phone number must not be empty or length should be greater than 10';
                   }
                 },
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(40)
                   ),
                   labelText: 'phone number',
                   hintText: 'phone',
                   prefixIcon: Icon(Icons.phone_android,),
                   prefixText: '+91'
                 ),
               ),
               SizedBox(height: 15,),
               MaterialButton(
                   onPressed: (){
                     final valid =validkey.currentState!.validate();
                     if(valid==true){
                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registration Successful'),backgroundColor: Colors.green,));
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                     }else{
                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('invalid password'),backgroundColor: Colors.red,));
                     }namectrl.clear();
                     namecntrl.clear();
                     pwdcntrl.clear();
                     pwdcrl.clear();
                     phone.clear();
                    },
                   shape: StadiumBorder(),
                   color: Colors.green,
                   child: Text('Sign Up'),),
               TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Stateful_Login()));}, child: RichText(text:
               TextSpan(children: [
                 TextSpan(text: 'Already Have An Account !'),
                 TextSpan(text: 'Login',style: TextStyle(fontWeight: FontWeight.bold))
               ])))

             ],
           ),
         ),
       ),
     ),
   );
  }
}

