import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Sta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('appbar', style: GoogleFonts.robotoCondensed(
            fontWeight: FontWeight.bold,fontSize: 50, color: Colors.yellow),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: StaggeredGrid.count(crossAxisCount: 4,crossAxisSpacing: 10,mainAxisSpacing: 10
            ,
            children: [
              StaggeredGridTile.count(
                  crossAxisCellCount: 2, mainAxisCellCount: 2, child:Container(
                color: Colors.green,
                child: Center(
                  child: Icon(Icons.widgets),
                ),
              )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2, mainAxisCellCount: 1, child:Container(
                color: Colors.blue,
                child: Center(
                  child: Icon(Icons.wifi),
                ),
              )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 1, mainAxisCellCount: 2, child:Container(
                color: Colors.yellowAccent,
                child: Center(
                  child: Icon(Icons.crop_square_rounded),
                ),
              )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 1, mainAxisCellCount: 1, child:Container(
                color: Colors.brown,
                child: Center(
                  child: Icon(Icons.map),
                ),
              )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2, mainAxisCellCount: 2, child:Container(
                color: Colors.deepOrange,
                child: Center(
                  child: Icon(Icons.send),
                ),
              )),

              StaggeredGridTile.count(
                  crossAxisCellCount: 1, mainAxisCellCount: 2, child:Container(
                color: Colors.blueAccent,
                child: Center(
                  child: Icon(Icons.man_sharp),
                ),
              )), StaggeredGridTile.count(
                  crossAxisCellCount: 1, mainAxisCellCount: 1, child:Container(
                color: Colors.red,
                child: Center(
                  child: Icon(Icons.bluetooth),
                ),
              )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 3, mainAxisCellCount: 1, child:Container(
                color: Colors.pink,
                child: Center(
                  child: Icon(Icons.battery_alert_outlined),
                ),
              )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 1, mainAxisCellCount: 1, child:Container(
                color: Colors.purple,
                child: Center(
                  child: Icon(Icons.monitor_sharp),
                ),
              )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 4, mainAxisCellCount: 1, child:Container(
                color: Colors.lightBlue,
                child: Center(
                  child: Icon(Icons.radio),
                ),
              )),
            ],),
        ),
      ),
    );
  }

}
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Sta(),));
}