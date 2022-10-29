import 'package:flutter/material.dart';

class ItemFoodCatalog extends StatelessWidget {
  const ItemFoodCatalog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.07),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'https://www.pngmart.com/files/5/Hamburger-PNG-Transparent-Image.png',
                  fit: BoxFit.contain,
                  width: 150,
                  height: 150,
                ),
                const Text(
                  'Pigeon Burger',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Burger Burgess zehahaha',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  '\$5.99',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16,
            bottom: 0,
            child: FloatingActionButton(
              heroTag: UniqueKey(),
              mini: true,
              onPressed: () {},
              backgroundColor: Colors.amber[400],
              child: Icon(Icons.navigate_next),
            ),
          ),
        ],
      ),
    );
  }
}
