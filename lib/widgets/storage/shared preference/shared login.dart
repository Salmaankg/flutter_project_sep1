import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/widgets/storage/shared%20preference/Shared%20Home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLogin extends StatefulWidget {
  @override
  State<SharedLogin> createState() => _SharedLoginState();
}

class _SharedLoginState extends State<SharedLogin> {
  final uname_cntrl = TextEditingController();
  final pwd_cntrl = TextEditingController();
  late bool loggedin;

  @override
  void initState() {
    useralready_loggedin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: uname_cntrl,
              decoration: InputDecoration(hintText: 'Login'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: pwd_cntrl,
              decoration: InputDecoration(hintText: 'Password'),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                validate_login();
              }
              // async {
              //   final SharedPreferences preferences= await SharedPreferences.getInstance()!;
              //  String? username = uname_cntrl.text;
              //  String? password = pwd_cntrl.text;
              //  if(username != '' && password != ""){
              //    preferences.setString('uname', username);
              //    preferences.setBool('loggedin', true);
              //    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SharedHome()));
              //  };},
              ,
              child: Text('Login'))
        ],
      ),
    );
  }

  void useralready_loggedin() async {
    final SharedPreferences preferences =
        await SharedPreferences.getInstance()!;
    loggedin = preferences.getBool('loggedin') ?? false;
    if (loggedin == true) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => SharedHome()));
    }
  }

  void validate_login() async{
    final SharedPreferences preferences = await SharedPreferences.getInstance()!;
    String username=uname_cntrl.text;
    String password =pwd_cntrl.text;
    String? uname=preferences.getString('uname');
    String? pswd=preferences.getString('password');
    if(username==uname && password==pswd){
      preferences.setBool('loggedin', true);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SharedHome()));
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: SharedLogin(),
    debugShowCheckedModeBanner: false,
  ));
}
