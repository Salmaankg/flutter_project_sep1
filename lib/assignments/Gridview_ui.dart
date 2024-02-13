import 'package:flutter/material.dart';

class GridviewUi extends StatelessWidget {
  final icons = [
    Icons.home,
    Icons.add_alert_rounded,
    Icons.linked_camera,
    Icons.local_activity,
    Icons.wifi_off_sharp,
    Icons.add_card,
    Icons.call,
    Icons.email,
    Icons.monitor_heart,
    Icons.article_rounded,
    Icons.mic_off,
    Icons.file_copy
  ];
  final colors = [
    Colors.blueAccent,
    Colors.orange,
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.blue,
    Colors.purpleAccent,
    Colors.greenAccent,
    Colors.yellow,
    Colors.deepOrange,
    Colors.pinkAccent,
    Colors.lightGreen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'GridView Ui',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: GridView.builder(
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 100,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemBuilder: (context, index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: colors[index],
                // color: Colors.primaries[index%Colors.primaries.length],
                child: Row(
                  children: [
                    SizedBox(
                      width: 80,
                      child: Icon(icons[index]),

                    ),
                    const SizedBox(
                      width: 50,
                      child: Text(
                        'Heart Shaker',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),

                    )
                  ],
                ),
              )),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridviewUi(),
  ));
}
