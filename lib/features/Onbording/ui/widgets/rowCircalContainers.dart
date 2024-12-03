import 'package:flutter/material.dart';
import 'package:recipes/features/Onbording/data/contentList.dart';
import 'package:recipes/features/Onbording/ui/widgets/circalContainer.dart';

class Rowcircalcontainers extends StatelessWidget {
  const Rowcircalcontainers({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          contents.length,
          (index) => Circalcontainer(currentIndex: currentIndex, index: index),
        ),
      ),
    );
  }
}