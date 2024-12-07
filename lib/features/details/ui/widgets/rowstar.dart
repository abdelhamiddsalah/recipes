// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:recipes/core/constants/colors.dart';

class rowstar extends StatelessWidget {
  const rowstar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.star, color: Colors.amber, size: 20),
        SizedBox(width: 4),
        Text('(4.5)', style: TextStyle(fontSize: 16,color: greyColor)),
      ],
    );
  }
}