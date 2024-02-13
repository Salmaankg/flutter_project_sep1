import 'package:flutter/material.dart';

List<Map<String,dynamic>> products=[
  {
    'id':1,
    'name':'product1',
    'price':500,
    'description':'pro 1',
    'image':'assets/images/cities/newyork.png'
  },
  {
    'id':3,
    'name':'product3',
    'price':500,
    'description':'pro 1',
    'image':'assets/images/cities/berlin.png'
  },
  {
    'id':4,
    'name':'product4',
    'price':500,
    'description':'pro 1',
    'image':'assets/images/cities/finland.png'
  },
  {
    'id':2,
    'name':'product2',
    'price':500,
    'description':'pro 1',
    'image':'assets/images/cities/indiagate.png'
  },
];
class ProductListdummy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text('Product List'),
  ),
  body: ListView(
    children: 
        // e single map
      products.map((e) => ListTile(leading:Text(e['name']),onTap: ()=>gotodetails(context,e['id']), )).toList()
    
  ),
);
  }

 void gotodetails(BuildContext context, id) {
    Navigator.pushNamed(context, 'details',arguments: id);
 }
  
}
void main(){
  runApp(MaterialApp(home: ProductListdummy(),
    debugShowCheckedModeBanner: false,
    routes:{'details':(context)=>Details()} ,
  ));
}
class Details extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final selectedid=ModalRoute.of(context)?.settings.arguments;
    final product=products.firstWhere((e) => e['id']==selectedid);
   return Scaffold(body: Center(
     child: Column(
       children: [
         Text('${product['id']}'),
         Image.asset(product['image'],fit:BoxFit.cover),
         Text(product['name']),
         Text('${product['price']}'),
         Text(product['description'])
       ],
     ),
   ),);
  }
  
}