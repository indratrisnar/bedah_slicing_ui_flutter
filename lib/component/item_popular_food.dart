import 'package:flutter/material.dart';

class ItemPopularFood extends StatelessWidget {
  const ItemPopularFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 12, 8, 12),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(100),
          bottomLeft: Radius.circular(100),
        ),
        color: Colors.green[900],
      ),
      margin: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image.network(
                'https://images.pexels.com/photos/825661/pexels-photo-825661.jpeg?auto=compress&cs=tinysrgb&w=600',
                fit: BoxFit.cover,
                height: 70,
                width: 70,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pizza Hoy Ulalaa',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(
                      Icons.food_bank_outlined,
                      color: Colors.white,
                      size: 14,
                    ),
                    Text(
                      '123kcal',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 14,
                    ),
                    Text(
                      '23km',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.access_time_outlined,
                      color: Colors.white,
                      size: 14,
                    ),
                    Text(
                      '23mins',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '\$12.99',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    FloatingActionButton(
                      mini: true,
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.green[900],
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
