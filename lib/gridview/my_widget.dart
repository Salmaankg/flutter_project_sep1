import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget extends StatelessWidget {
  final Color? bgcolor;
  final Image? images;
  final Widget? label;
  VoidCallback? onpresseed;

  MyWidget(
      {this.bgcolor,
      this.images,
      required this.label,
      required this.onpresseed});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgcolor,
      child: Column(
        children: [
          Container(
            child: images,
          ),
          MaterialButton(
            onPressed: onpresseed,
            child: label,
            shape: StadiumBorder(),
            color: Colors.black,
            height: 50,
            minWidth: 150,
          )
        ],
      ),
    );
  }
}

class Fruit extends StatelessWidget {
  var images = [
    'assets/images/apple.png',
    'assets/images/banana.png',
    'assets/images/grapes.png',
    'assets/images/kiwi.png',
    'assets/images/mango.png',
    'assets/images/orange.png',
    'assets/images/watermelon.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Fruits',
          style: GoogleFonts.inder(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
      body: CarouselSlider(
          items: List.generate(
              7,
              (index) => MyWidget(
                    label: Text('Add ',style: TextStyle(color: Colors.white),),
                    onpresseed: () {},
                    images: Image.asset(images[index],fit: BoxFit.fill,),
                    bgcolor: Colors.primaries[index % Colors.primaries.length],
                  )),
          options: CarouselOptions(
              enableInfiniteScroll: false,
              aspectRatio: 16/16,
              viewportFraction: .8,
              autoPlay: true,
              pauseAutoPlayOnTouch: true)),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Fruit(),
  ));
}
