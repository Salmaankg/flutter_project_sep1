import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ClippersEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          ClipRect(
            child: Align(
                widthFactor: .4,
                heightFactor: .6,
                child: Image.asset('assets/images/cities/paris.png')),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset('assets/images/cities/newyork.png'),
          ),
          ClipOval(
              child:Image.asset('assets/images/cities/newyork.png')),
          ClipPath(
            clipper: StarClipper(6),
            child:Image.asset('assets/images/cities/newyork.png') ,

          ),
          ClipPath(
            clipper: TriangleClipper(),
            child: Image.asset('assets/images/cities/newyork.png'),
          ),
          ClipPath(
            clipper: MovieTicketBothSidesClipper(),
            child: Container(height: 200,
              color: Colors.red,
            ),
          ),

        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ClippersEx(),
  ));
}
