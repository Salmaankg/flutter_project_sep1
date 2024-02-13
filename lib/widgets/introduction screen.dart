import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/frontpage.dart';
import 'package:flutter_project_sep1/login_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'Page 1',
            image: Align(
                alignment: Alignment.center,
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXI3VngWRmkv4ipsMiUZw5w2Kqa1YhIkRedw&usqp=CAU')),
            body: 'Hello'),
        PageViewModel(
            title: 'Page 2',
            image: Align(
                alignment: Alignment.center,
                child: Image.network(
                    'https://t4.ftcdn.net/jpg/02/50/41/77/360_F_250417709_vqAnykCyATjzNh8HkwQZFuVbShFYIIH3.jpg')),
            body: 'Hi!'),
        PageViewModel(
            title: 'Page 3',
            image: Align(
                alignment: Alignment.center,
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtmcIXrz-tqaLU6-2QYSNgqh4cM48w4icQ1w&usqp=CAU')),
            body: 'Thanks'),
        PageViewModel(
            title: 'Page 3',
            image: Align(
                alignment: Alignment.center,
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8kI-SKowlzeXNA2YG62Akt_8kR0PQ3-DAfA&usqp=CAU')),
            body: 'Welcome')
      ],
     showSkipButton: true,
     onSkip: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));},
      onDone: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FrontPage()));},
    skip: Text('skip'),
      next: Icon(Icons.arrow_forward),
      done: Text('Continue'),
      dotsDecorator: DotsDecorator(
        size: Size(10, 10),
        activeSize: Size(30, 10),
          activeColor: Colors.yellow,
        color: Colors.black,
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OnBoardingEx(),

  ));
}
