import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Item Service Coffee')),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ItemServiceCoffee(),
          ],
        ),
      ),
    );
  }
}

class ItemServiceCoffee extends StatelessWidget {
  const ItemServiceCoffee({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        40,
        30,
        40,
        60,
      ),
      decoration: BoxDecoration(
        color: Colors.brown[50],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(200),
          bottomRight: Radius.circular(200),
        ),
        boxShadow: [
           BoxShadow(
            blurRadius: 6,
            color: Colors.brown[400]!,
            offset: const Offset(1, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image.network(
              'https://images.pexels.com/photos/7362647/pexels-photo-7362647.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
              fit: BoxFit.cover,
              height: 70,
              width: 70,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'casual chocolate coffee',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.brown[900],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Regular casual coffee (without milk or cream) is low in calories. In Fact, a typical cup of coffee',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {
              print('explore more');
            },
            style: ButtonStyle(
              padding:  MaterialStateProperty.resolveWith((states) {
                return const EdgeInsets.symmetric(horizontal: 30,vertical: 16);
              }),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                return Colors.brown[700];
              }),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                return Colors.white;
              }), 
              shape: MaterialStateProperty.resolveWith((states) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                );
              }), 
            ),
            child: const Text('Explore More'),
          ),
        ],
      ),
    );
  }
}
