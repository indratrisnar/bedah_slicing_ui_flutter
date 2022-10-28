import 'package:flutter/material.dart';

class ItemSalonService extends StatelessWidget {
  const ItemSalonService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://images.pexels.com/photos/7518757/pexels-photo-7518757.jpeg?auto=compress&cs=tinysrgb&w=600',
              fit: BoxFit.cover,
              height: 140,
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.grey[700],
                size: 18,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  '131 Merc Blvd, London',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              const SizedBox(width: 4),
              Text(
                '4.5',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: const [
              Expanded(
                child: Text(
                  'Fly Hair Study',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(width: 4),
              Text(
                '\$18.00',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
