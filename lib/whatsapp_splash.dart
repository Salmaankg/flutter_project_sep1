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
            Image(
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/2044px-WhatsApp.svg.png'),
              width: 100,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 360, 0, 0),
              child: Text(
                'FROM',
                style: GoogleFonts.adventPro(fontSize: 15, color: Colors.grey),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.call),
                Text(
                  'Meta',
                  style: GoogleFonts.italiana(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ],
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
