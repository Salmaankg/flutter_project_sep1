import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listview2(),));
}
class Listview2 extends StatelessWidget{
  var name =['salman','amal','kohli','messi','vava','rinad','jishu','ney','minhaj','rabee'];
  var message =['hi','hello','how r u ?','mrng','gud mrng','good night','thanks','welcome','yes','thank you'];
  var date_time=['10.15 AM','10.00 AM','9.45 AM','9.30 AM','9.15 AM',"9.00 AM",'8.45 AM','8.30 AM','8.15 AM','8.00 AM'];
  var msgnum=[2,3,4,5,6,7,8,8,3,2];
  var images=[];
  var icons =[
    Icon(Icons.done),
    Icon(Icons.done_all),
    Icon(Icons.done),
    Icon(Icons.done_all,color: Colors.blue,),
    Icon(Icons.access_time),
    Icon(Icons.done_all,color: Colors.blue,),
    Icon(Icons.done),
    Icon(Icons.done_all),
    Icon(Icons.done_all,color: Colors.blue,),
    Icon(Icons.done_all),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listview2'),),
      body:ListView(
        children:List.generate(10,
                (index) =>
         ListTile(
          leading: CircleAvatar(
            // backgroundImage: NetworkImage(images[index]),
            backgroundColor: Colors.primaries[index%Colors.primaries.length],
            // backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
            // child: Icon(Icons.person),

          ),
          title: Text(name[index]),
          subtitle: Row(children: [
            // Icon(Icons.done_all),
            icons[index],
            Text(message[index])
          ],),
          trailing: Column(
            children: [
              Text(date_time[index]),
              SizedBox(height: 5,),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.blue,
                child: Text('${msgnum[index]}',style: TextStyle(fontSize: 13),),
              )
            ],
          ),
        )),
      ),
    );
  }

}