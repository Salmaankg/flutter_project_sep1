import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    theme: ThemeData.dark(),
  ));
}

class MyApp extends StatefulWidget {
  static final title = 'salomon_bottom_bar';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;
  var iconimg = [
   'assets/images/cities/newyork.png',
    'assets/images/cities/newyork.png',
    'assets/images/cities/newyork.png',
    'assets/images/cities/newyork.png',
    'assets/images/cities/newyork.png',
    'assets/images/cities/newyork.png',
    'assets/images/cities/newyork.png',
    'assets/images/cities/newyork.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              floating: false,
              title: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Playlists",
                      style: GoogleFonts.kanit(
                        fontSize: 30,
                        color: Colors.pink[100],
                      ),
                    ),
                  ],
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size(90, 80),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[850],
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.pink[100]),
                    suffixIcon: Icon(Icons.search),
                    suffixIconColor: Colors.pink[100],
                  ),
                ),
              ),
            ),
            SliverGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 40,
                crossAxisSpacing: 40,
                children: List.generate(
                  8,
                      (index) => Padding(
                    padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20.0),
                            bottom: Radius.circular(20.0)),
                        child: Image(
                            image: AssetImage(iconimg[index]),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.red,
            unselectedColor: Colors.white,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.orange,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.playlist_add),
            title: Text(":Playlist"),
            selectedColor: Colors.pink,
            unselectedColor: Colors.white,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text("More"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}