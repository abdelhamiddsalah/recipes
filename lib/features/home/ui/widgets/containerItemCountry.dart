import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes/core/constants/colors.dart';

class Cotaineritemcountry extends StatelessWidget {
  const Cotaineritemcountry({
    super.key, required this.flag, required this.name,required this.onTap,
  });
  final String flag;
  final String name;
  final void Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text(flag, style: TextStyle(fontSize: 20.sp)),
           const   SizedBox(width: 8),
              Text(
                name,
                style: TextStyle(fontSize: 16.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
