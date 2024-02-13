import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicUi extends StatefulWidget{
  @override
  State<MusicUi> createState()=>_MusicUi(); 
}

class _MusicUi extends  State<MusicUi>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Center(child: Text('Playlists',style: GoogleFonts.aladin(fontSize:30,fontWeight: FontWeight.bold,color: Colors.pinkAccent),)),
          TextFormField(decoration: InputDecoration(suffixIcon: Icon(Icons.search),hintText: 'Search...',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
          GridView.count(crossAxisCount: 2,children: List.generate(8, (index) => Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/cities/newyork.png'))),)),),
        ],
      ),
   bottomNavigationBar: BottomNavigationBar(
     backgroundColor: Colors.black,
       elevation: 10 ,
       items: [
     BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
     BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
     BottomNavigationBarItem(icon: Icon(Icons.menu_outlined),label: 'Playlists'),
     BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.marsAndVenusBurst),label: 'Profile')
   ]),
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MusicUi(),
  ));
}