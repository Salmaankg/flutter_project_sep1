import 'package:flutter/material.dart';

class ExpansionTileEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion tile'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: List.generate(
            5,
            (index) => ExpansionTile(
              backgroundColor: Colors.primaries[index%Colors.primaries.length],
                title: Text('Tile${index + 1}'),
                children: List.generate(
                    4,
                    (index) => ListTile(
                      title: Text('user ${index+1}'),
                          leading: CircleAvatar(
                            backgroundColor: Colors
                                .primaries[index % Colors.primaries.length],
                          ),
                        )))),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ExpansionTileEx(),
  ));
}
