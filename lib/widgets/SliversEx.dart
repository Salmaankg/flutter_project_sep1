import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SliversEx(),
  ));
}
class SliversEx extends StatefulWidget {
  @override
  State<SliversEx> createState() => _SliversEx();
}

class _SliversEx extends State<SliversEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: Text('Slivers'),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.grey,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      labelText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(List.generate(20, (index) => ListTile(leading: Icon(Icons.person),title: Text('User $index'),))))
        ],
      ),
    );
  }
}
