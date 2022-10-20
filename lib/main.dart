import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'component/item_product_coffee.dart';
import 'component/item_service_coffee.dart';

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
        appBar: AppBar(title: const Text('Item Product Coffee')),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Center(
              child: ItemProductCoffee(),
            ),
          ],
        ),
      ),
    );
  }
}

