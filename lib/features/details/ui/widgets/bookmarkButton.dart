// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:recipes/core/constants/colors.dart';

class BookmarkButton extends StatelessWidget {
  const BookmarkButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      right: 16,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: IconButton(
          icon: const Icon(Icons.bookmark, color: mainColor),
          onPressed: () {},
        ),
      ),
    );
  }
}
