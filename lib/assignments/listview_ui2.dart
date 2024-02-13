import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProducutList(),
  ));
}

class ProducutList extends StatelessWidget {
  var images=['assets/images/apple.png','assets/images/mango.png','assets/images/banana.png','assets/images/grapes.png',
    'assets/images/watermelon.png','assets/images/kiwi.png','assets/images/orange.png'];
  final name=['Apple',
    'Mango',
    'Banana',
    'Grapes',
    'Watermelon',
    'Kiwi',
    'Orange'];
  final unit = ['kg','Doz','Kg','Doz','Pc','Doz','Kg'];
  final price = [10,20,30,40,50,60,70];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product list'),
        actions: [
          Badge(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
          )
        ],
      ),
      body: ListView.custom(
        // childrenDelegate: SliverChildListDelegate(
        // [
        //   Card(child: Center(child: Text('Hello'),),),
        //   Card(child: Center(child: Text('Hello'),),),
        //   Card(child: Center(child: Text('Hello'),),),
        //   Card(child: Center(child: Text('Hello'),),),
        // ]
        // List.generate(10, (index) => Card(child: Center(child: Text('Hello'),),),)
        childrenDelegate:
        SliverChildBuilderDelegate( childCount: 7,(context, index)=>

            Card(
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(images[index], height: 50, width: 50,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(text: TextSpan(
                          style: const TextStyle(color: Colors.black),
                          children: [
                            const TextSpan(text: 'Name:'),
                            TextSpan(text: name[index],
                                style: const TextStyle(fontWeight: FontWeight.bold))
                          ]
                      )),
                      RichText(text: TextSpan(
                          style: const TextStyle(color: Colors.black),

                          children: [
                            const TextSpan(text: 'Unit'),
                            TextSpan(text: unit[index],
                                style: const TextStyle(fontWeight: FontWeight.bold))
                          ]
                      )),
                      RichText(text: TextSpan(
                          style: const TextStyle(color: Colors.black),

                          children: [
                            const TextSpan(text: 'Price:'),
                            TextSpan(text: '\$${price[index]}',
                                style: const TextStyle(fontWeight: FontWeight.bold))
                          ]
                      )),
                    ],
                  ),
                  MaterialButton(
                    color: Colors.black,
                    height: 15,
                    minWidth: 30,
                    onPressed: () {},
                    child: Text(
                      'Add to cart', style: TextStyle(color: Colors.white),),
                    shape: StadiumBorder(),)
                ],
              ),
            )
        ),
      ),
    );
  }
}
