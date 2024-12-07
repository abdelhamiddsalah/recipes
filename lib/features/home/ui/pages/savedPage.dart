import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes/core/constants/colors.dart';
import 'package:recipes/features/home/ui/widgets/itemSaved.dart';

class Savedpage extends StatelessWidget {
  const Savedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Saved recipes ',
            style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:ListView.builder(
          itemCount: 20,
          
          itemBuilder: (BuildContext context, int index) {
            return itemSaved() ;
          },
        ),
      ),
    );
  }
}

