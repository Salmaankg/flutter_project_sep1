

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Splash(),));
}
class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      // backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          /// to set background image for body
          //   image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyVxqS-Mlt3JRjckYcSqBP00KXMRBDldruxw&usqp=CAU') )
        /// to set background gradient for body
          gradient: LinearGradient(colors: [
            Colors.indigoAccent,
            Colors.blueAccent,
            Colors.lightBlue,
            Colors.white,
          ])),
      child: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            // Icon(Icons.phone,size: 100,color: Colors.white,),
            // Image.asset('assets/icons/apple-brand.svg'),
            // Image.network('url'),
            Image(image: AssetImage('assets/images/microsoftlogo.png'),height: 70,width: 70,),
            // Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfyMlh98ZOz0A8o8GSiCAqlCF1N9u2i6QwkWmLmTtPK1W7VRazBzDukH1dhQUMXXyeQoc&usqp=CAU')),
            Text('WINDOWS',
              // style:TextStyle(fontSize: 50,color:Colors.black,fontWeight: FontWeight.bold),
            style: GoogleFonts.spaceGrotesk(
              fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold
            ),
            ),
          ],
        ),
      ),
    ));
  }


}
