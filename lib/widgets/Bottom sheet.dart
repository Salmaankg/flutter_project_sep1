import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomSheetEx(),
  ));
}

class BottomSheetEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            showsheet(context);
          },
            child: Image.asset('assets/images/cities/indiagate.png')),
      ),
    );
  }

  void showsheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){return const Column(mainAxisSize: MainAxisSize.min ,
      children: [
        // Row(
        //   children: [Icon(Icons.share),Text('Share')],
        // ),
        // Row(children: [Icon(Icons.copy),Text('Copy')],)
        ListTile(
          leading: Icon(Icons.share),
          title: Text('Share'),
        ),
        ListTile(
          leading: Icon(Icons.copy),
          title: Text('Copy'),
        )
      ],
    );});
  }
}
