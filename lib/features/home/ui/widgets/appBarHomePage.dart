import 'package:flutter/material.dart';

class Appbarhomepage extends StatelessWidget {
  const Appbarhomepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      const   Text(' Recipes',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
         Image.asset('assets/images/logo.png'),
        
      ],
    );
  }
}