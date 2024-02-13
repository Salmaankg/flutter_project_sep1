import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Stackex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            height: 750,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/cities/newyork.png'),
                    fit: BoxFit.fill)),
          ),
          Positioned(
            left: 150,
            top: 350,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(5)),
              height: 50,
              width: 100,
              child: Text(
                'Stack',
                style: GoogleFonts.spaceGrotesk(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
            ),
          ),
          Positioned(
            left: 160,
            top: 410,
            child: Container(
              height: 30,
              width: 80,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white)),
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Stackex(),
  ));
}
