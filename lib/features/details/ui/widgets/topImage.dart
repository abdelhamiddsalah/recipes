// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TopImage extends StatelessWidget {
  const TopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
