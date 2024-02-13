import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: ListView4(),));
}
class ListView4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView Separated'),
        ),
        body:ListView.separated(
            itemBuilder: (context,index){
              return ListTile(
                leading: Icon(Icons.person),
                title: Text('My Contact'),
              );
            },
            separatorBuilder: (context,index){
              if(index%2==0){
              return Divider(thickness: 5,color: Colors.black,);
            }else{
                return SizedBox();}
    },
            itemCount: 10),

        );

  }

}