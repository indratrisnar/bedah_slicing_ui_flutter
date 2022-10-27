import 'package:flutter/material.dart';

class ItemApartment extends StatelessWidget {
  const ItemApartment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg?auto=compress&cs=tinysrgb&w=600',
              fit: BoxFit.cover,
              height: 90,
              width: 120,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sand House',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '\$370.00',
                  style: TextStyle(
                    color: Colors.brown[400],
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_outline,
                      size: 15,
                      color: Colors.brown[300]!,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Wisteria Reven',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 15,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.gif_box_outlined,
                      size: 15,
                      color: Colors.brown[300]!,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '465 s.q.M',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 15,
                      color: Colors.brown[300]!,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '342 W 43 TH Wichita NY',
                      style: TextStyle(
                        fontSize: 10,
                      ),
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
