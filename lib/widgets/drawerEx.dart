import 'package:flutter/material.dart';

class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Drawer'),
      ),
      drawer: Drawer(backgroundColor: Colors.grey,
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/cities/berlin.png'),fit: BoxFit.cover)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/cities/indiagate.png'),
                ),
                accountName: Text('Salman'),
                accountEmail: Text('salman@gmail.com')),
            ListTile(
              trailing: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              trailing: Icon(Icons.person),
              title: Text('Profile'),
            ),
            ListTile(
              trailing: Icon(Icons.settings),
              title: Text('Settings'),
            )
            , ListTile(
              trailing: Icon(Icons.logout),
              title: Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DrawerEx(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}
