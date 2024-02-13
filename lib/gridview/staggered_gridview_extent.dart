import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredExtent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.extent(
          maxCrossAxisExtent: 100,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.extent(
                crossAxisCellCount:20 ,
                mainAxisExtent: 200,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(image: AssetImage('assets/images/apple.png'))
                  ),
                )),
            StaggeredGridTile.extent(
                crossAxisCellCount: 50,
                mainAxisExtent: 300,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(image: AssetImage('assets/images/apple.png'))
                  ),
                )),
            StaggeredGridTile.extent(
                crossAxisCellCount:250,
                mainAxisExtent: 100,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(image: AssetImage('assets/images/apple.png'))
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StaggeredExtent(),
  ));
}