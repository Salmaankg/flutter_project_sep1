import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/widgets/storage/shared%20preference/Shared%20Home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedSignup extends StatefulWidget {
  const SharedSignup({super.key});

  @override
  State<SharedSignup> createState() => _SharedSignupState();
}

class _SharedSignupState extends State<SharedSignup> {
  final name_ctrl = TextEditingController();
  final uname_ctrl = TextEditingController();
  final pwd_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: name_ctrl,
              decoration: InputDecoration(
                  hintText: 'Name', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: uname_ctrl,
              decoration: InputDecoration(
                  hintText: 'Login', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: pwd_ctrl,
              decoration: InputDecoration(
                  hintText: 'Password', border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                storedata();


              },
              child: Text('Login'))
        ],
      ),
    );
  }

  void storedata()async {
    final SharedPreferences preferences = await SharedPreferences.getInstance()!;
    String name=name_ctrl.text;
    String username=uname_ctrl.text;
    String password = pwd_ctrl.text;
    if(username != '' && password !=''){
      preferences.setString('uname$username', username);
      preferences.setString('name$username', name);
      preferences.setString('password$username', password);
      preferences.setBool('loggedin', true);
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SharedHome() ));
    }
  }
}
