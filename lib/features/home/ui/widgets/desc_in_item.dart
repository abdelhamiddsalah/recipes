// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:recipes/core/constants/colors.dart';
import 'package:recipes/features/details/ui/widgets/rowstar.dart';

class desc_in_item extends StatelessWidget {
  const desc_in_item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Spiced Fried Chicken',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              rowstar(),
              SizedBox(width: 20), // Add space between row elements
              Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: greyColor,
                  ),
                  SizedBox(width: 8), // Space between Icon and Text
                  Text(
                    '30 min',
                    style: TextStyle(color: greyColor),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.centerRight, // Align the button to the right
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark,
                size: 25,
                color: mainColor, // Use the mainColor as the icon color
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
