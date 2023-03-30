import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.menu),
              Text('MalBob Market'),
              Icon(Icons.people),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ItemData(price: 100),
              ItemData(price: 555),
              ItemData(price: 422),
              ItemData(price:444),
              ItemData(price:666),
              ItemData(price:888),
              ItemData(price:777),
              ItemData(price:999),
              ItemData(price:222),
              ItemData(price:111),
              ItemData(price:555),
              ItemData(price:333),
            ],
          ),
        ),
      
        
        ),
      );
  }
}

class ItemData extends StatelessWidget {
  int price;
   ItemData({
    super.key,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          height: 100,
          width: 100,
          image: AssetImage('imges/images.png')
          
          ),
          const SizedBox(width: 50,),
          
          Flexible(
            flex: 1,
            child: Column(
                  
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
              const Text('귀여운 이누마키 팝니다.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                
          
              ),
              const Text('서울 특별시',
              style: TextStyle(color: Colors.black),
              ),
          
             Text('$price원.'),
              
              Row(
                 mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,

                children: const [
                
                Icon(Icons.favorite_border,
                  color: Colors.deepOrange,
                ),
                Text('132'),
                SizedBox(width: 20,)
              ],)
            ],
            ),
          )
      ],
      
    );
  }
}