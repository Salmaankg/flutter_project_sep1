import 'package:flutter/material.dart';

class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 750,
          ),
          Container(
            color: Colors.green,
            height: 500,
            width: 250,
          ),
          Positioned(
            left: 125,
              top: 250,
              child: Container(
            color: Colors.yellow,
            height: 250,
            width: 125,
          ))
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackEx(),
  ));
}
