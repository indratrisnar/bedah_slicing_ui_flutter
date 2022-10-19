import 'package:flutter/material.dart';

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
        appBar: AppBar(title: const Text('Item Service Coffee')),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            ItemServiceCoffee(),
          ],
        ),
      ),
    );
  }
}

