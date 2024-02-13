import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatsHome extends StatefulWidget {
  @override
  State<WhatsHome> createState() => _Whatshome();
}

class _Whatshome extends State<WhatsHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text('New Group')),
                const PopupMenuItem(child: Text('New Broadcast')),
                const PopupMenuItem(child: Text('Linked Device')),
                const PopupMenuItem(child: Text('Settings')),
              ];
            }),

          ],
          title: Container(
            margin: EdgeInsets.fromLTRB(0, 23, 0, 5),
            child: Text(
              'Whatsapp',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.green,
          bottom: TabBar(indicatorColor: Colors.white, tabs: [
            Icon(Icons.camera_alt),
            Text('Status'),
            Text('Chat'),
            Text('Call')
          ]),
            elevation: 0.7,
        ),
        body: TabBarView(children: [
          Center(child: Text('Hello')),
          Center(child: Text('Hello')),
          Center(child: Text('Hello')),
          Center(child: Text('Hello'))
        ]),
        floatingActionButton: FloatingActionButton(
            child: IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Colors.white,),),
            onPressed: () {},
          backgroundColor: Colors.green,
        tooltip: 'Salman',),


      ),
    );
  }
}
