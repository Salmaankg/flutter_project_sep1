import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/gridview/my_widget.dart';

class Carousel extends StatelessWidget {
  final images=[
    'assets/images/cities/indiagate.png',
  'assets/images/cities/paris.png',
  'assets/images/cities/newyork.png',
  'assets/images/cities/berlin.png',
  'assets/images/cities/finland.png',
  'assets/images/cities/london.png',
  'assets/images/cities/tokyo.png',
  'assets/images/cities/vancouver.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: CarouselSlider(items: [
      //   Container(
      //     decoration:
      //         BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/apple.png'),fit: BoxFit.fill)),
      //   ),
      //   Container(
      //     decoration:
      //     BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/grapes.png'),fit: BoxFit.fill),),
      //   ),
      //   Container(
      //     decoration:
      //     BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/watermelon.png'),fit: BoxFit.fill)),
      //   ),
      //   Container(
      //     decoration:
      //     BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/mango.png'),fit: BoxFit.fill)),
      //   ),
      //   Container(
      //     decoration:
      //     BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/orange.png'),fit: BoxFit.fill)),
      //   ),
      //   Container(
      //     decoration:
      //     BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/kiwi.png'),fit: BoxFit.fill)),
      //   ),
      // ], options: CarouselOptions(
      //   // height: 400
      //   aspectRatio: 16/9,
      //   viewportFraction: .4,
      //   initialPage: 1,
      //   enableInfiniteScroll: true,
      //   autoPlay: true,
      //   autoPlayCurve: Curves.easeInCubic,
      //   autoPlayInterval: Duration(seconds: 3),
      //   pauseAutoPlayOnTouch: true,
      // )),
    body: CarouselSlider(items: List.generate(8, (index) =>
    Card(
      child: Image.asset(images[index],fit: BoxFit.fill,),
    )), options: CarouselOptions(
      enableInfiniteScroll: false,
    )),
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Carousel(),
  ));
}