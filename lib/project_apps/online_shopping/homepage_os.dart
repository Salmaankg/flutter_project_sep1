import 'package:flutter/material.dart';

class HomepageOS extends StatefulWidget {
  @override
  State<HomepageOS> createState() => _HomepageOSState();
}

class _HomepageOSState extends State<HomepageOS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),
        ),
        elevation: 0,
      ),
      body: GridView.count(
        crossAxisCount: 2,mainAxisSpacing: 20,
        children: List.generate(
            6,
            (index) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/grapes.png'),
                    Text('Name : Salman'),
                    Text('Price : \$600')],
                  ),
            )),
      ),
    );
  }
}
