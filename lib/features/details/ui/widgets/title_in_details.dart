// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:recipes/features/details/ui/widgets/rowstar.dart';

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
        rowstar(),
      ],
    );
  }
}


