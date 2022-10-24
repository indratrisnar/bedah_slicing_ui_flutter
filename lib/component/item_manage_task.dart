import 'package:flutter/material.dart';

class ItemManageTask extends StatelessWidget {
  const ItemManageTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.blue[400],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 40,
                height: 40,
                child: const Icon(
                  Icons.code_outlined,
                  color: Colors.white,
                ),
              ),
              const Text(
                '16/20',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Text(
            'Login page Coding',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: const [
              Icon(
                Icons.flag_outlined,
                color: Colors.white70,
              ),
              SizedBox(width: 8),
              Text(
                'June 8',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
