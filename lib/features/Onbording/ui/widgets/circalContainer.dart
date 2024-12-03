import 'package:flutter/material.dart';
import 'package:recipes/core/constants/colors.dart';

class Circalcontainer extends StatelessWidget {
  const Circalcontainer({super.key, required this.currentIndex, required this.index});
  final int currentIndex;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin:  const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.grey : mainColor,
      ),
    );
    ;
  }
}
