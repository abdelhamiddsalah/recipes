import 'package:flutter/material.dart';
import 'package:recipes/core/constants/colors.dart';
import 'package:recipes/features/Onbording/data/contentList.dart';

class Buttonondoarding extends StatelessWidget {
  const Buttonondoarding({
    super.key,
    required this.currentIndex,
    required PageController controller,
  }) : _controller = controller;

  final int currentIndex;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height: 50,
     
      decoration: BoxDecoration( color: mainColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: MaterialButton(
        child: Text(
          style: TextStyle(color: Colors.white),
            currentIndex == contents.length - 1 ? "Get Started" : "Next"),
        onPressed: () {
          if (currentIndex == contents.length - 1) {
           
          }
          _controller.nextPage(
            duration: Duration(milliseconds: 100),
            curve: Curves.bounceIn,
          );
        },
       
      ),
    );
  }
}

