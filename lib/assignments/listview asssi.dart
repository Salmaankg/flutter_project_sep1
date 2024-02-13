import 'package:flutter/material.dart';

class ListViewSeparate extends StatelessWidget{
  var months=['JANUARY','FEBRUARY','MARCH','APRIL','MAY','JUNE','JULY','AUGUST','SEPTEMBER','OCTOBER','NOVEMBER','DECEMBER'];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(),
    body: ListView.separated(
        itemBuilder: (context,index){
          return Card(

            color: Colors.white,
            child: Text(months[index],style: TextStyle(color: Colors.black,fontSize: 20),),
          );
        },
        separatorBuilder: (context,index){
          if(index%3==0){
            return Card(
              color: Colors.red,
              child: Text('Advertisement',style: TextStyle(color: Colors.white,fontSize: 25),),
            );
          }else{
            return SizedBox();
          }
        },
        itemCount: 12),
    );
  }

}
void main(){
  runApp(MaterialApp(home: ListViewSeparate(),));
}