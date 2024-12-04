// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class title_in_details extends StatelessWidget {
  const title_in_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
      'Spiced Fried Chicken',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
        Row(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 20),
            SizedBox(width: 4),
            Text('(4.5)', style: TextStyle(fontSize: 16)),
          ],
        ),
      ],
    );
  }
}
