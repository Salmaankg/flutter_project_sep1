import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/frontpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main (){
  runApp(MaterialApp(home: Homepage(),));
}
class Homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_Homepage_State();
}

class _Homepage_State extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading: IconButton(
           onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>FrontPage()));},
           icon: Icon(Icons.arrow_back_ios)),
       title: Text('MY Contacts'),
     ),
     body: ListView(
       children: const [
         Card(
           child: ListTile(
               title: Text('salman'),
                subtitle: Text('987766542'),
                leading: CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person),),
                trailing: Icon(Icons.call),),
         ),
         ListTile(
             title: Text('rinad'),
             subtitle: Text('0986323'),
             leading: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7UUE13YvaFa7sf-_Snlu3BfsSuRM-arEK5in8u8t32Q_lK2g47YFsCo48FO_rJ9ncmSo&usqp=CAU'),),
         trailing: Icon(Icons.call),),
         ListTile(title: Text('minhaj'),
         subtitle: Text('35468903'),
         leading: CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person,color: Colors.white,),),
         trailing: Icon(Icons.call,),),
         ListTile(
             title: Text('kohli'),
         subtitle: Text('347642980'),
         leading: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5Xd1MjNmBYBFy3lmxS5kapwbiJf0Q5MSCIg&usqp=CAU'),),
         trailing: Icon(Icons.call),),
         ListTile(title: Text('messi'),
           subtitle: Row(
             children: [
               Icon(Icons.done_all,color: Colors.blue,),
               Text('hi ! are you there ?')
             ],
           ),
           leading: CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person,color: Colors.white,),),
           trailing: Text('12.23 PM')),
         ListTile(
           title: Text('salman'),
           subtitle:Row(
             children: [
               Icon(Icons.done_all,color: Colors.grey,),
               Text('HI ! ARE YOU THERE ?')
             ],
           ),
           leading: CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person),),
           trailing:Column(children: [
             Text('Yesterday'),
             CircleAvatar(
               radius: 10,
               backgroundColor: Colors.blue,
               child: Text('2',style: TextStyle(fontSize: 13),),
             )
           ],),),
         Padding(
           padding: EdgeInsets.only(top: 150),
           child: Row(
             mainAxisAlignment:MainAxisAlignment.spaceEvenly,
               children: [

             FaIcon(FontAwesomeIcons.google),
             FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
             FaIcon(FontAwesomeIcons.instagram),
             FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
           ],),
         )
       ],
     ),

   );
  }
}