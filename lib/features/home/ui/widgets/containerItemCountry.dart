import 'package:flutter/material.dart';
import 'package:recipes/core/constants/colors.dart';

class Cotaineritemcountry extends StatelessWidget {
  const Cotaineritemcountry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('🇸🇩', style: TextStyle(fontSize: 24)),
            SizedBox(width: 8),
            
            Text(
              'Palestineeeeee',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
