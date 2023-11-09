import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Image(
                image:NetworkImage('https://www.pngall.com/wp-content/uploads/13/Whatsapp-Logo.png'),
                width: 100,
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 250, 0,0 ),
              child: Text(
                'FROM',
                style: GoogleFonts.robotoCondensed(fontSize: 15, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call,color: Colors.green,),
                  Text(
                    ' Meta',
                    style: GoogleFonts.italiana(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Splass(),
  ));
}
