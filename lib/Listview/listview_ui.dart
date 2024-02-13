import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListUi extends StatelessWidget {
  var images = [
    'assets/images/indiagate.png',
    'assets/images/finland.png',
    'assets/images/london.png',
    'assets/images/vancouver.png',
    'assets/images/newyork.png',
    'assets/images/paris.png',
    'assets/images/berlin.png',
    'assets/images/tokyo.png'
  ];
  var city = ['Delhi', 'Finland', 'London', 'vancouver','Newyork','Paris','Berlin','Tokyo'];
  var country = ['India', 'Europe', 'UK', 'Canada','USA','France','Germany','Japan'];
  var population = [32.9, 5.54, 8.8, 2.6,8.1,2.2,3.7,10.4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Cities Around World',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0,
      ),
      body: ListView(
        children: List.generate(
            8,
            (index) => Card(
              color: Colors.orange,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(image:AssetImage(images[index]),
                      fit:BoxFit.fill,
                      height: 100,
                      width: 150,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(city[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            country[index],
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'Population = ${population[index]} mill',
                            style:
                                TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ListUi(),
  ));
}
