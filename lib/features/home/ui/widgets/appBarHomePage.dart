import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Appbarhomepage extends StatelessWidget {
  const Appbarhomepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(' Recipes',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),),
         Image.asset('assets/images/logo.png'),
        
      ],
    );
  }
}