import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/widgets/storage/shared%20preference/shared%20login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHome extends StatefulWidget {


  @override
  State<SharedHome> createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
  @override
  void initState() {
   getvalue();
    super.initState();
  }
  @override
  String? username;
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text('HI $username ...'),actions: [
  IconButton(onPressed: ()async{final SharedPreferences preferences =await SharedPreferences.getInstance()!;
    preferences.setBool('loggedin', false);
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SharedLogin()));}, icon:Icon(Icons.logout) )
],),
    );
  }
  void getvalue() async{
    final SharedPreferences preferences =await SharedPreferences.getInstance()!;
    setState(() {
      username=preferences.getString('uname')!;
    });
  }
}
