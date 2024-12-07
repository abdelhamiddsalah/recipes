import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes/features/home/ui/widgets/appBarHomePage.dart';
import 'package:recipes/features/home/ui/widgets/gridViewItemsCounty.dart';
import 'package:recipes/features/home/ui/widgets/listview_in_home.dart';

class Bodyhomepage extends StatelessWidget {
  const Bodyhomepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Appbarhomepage(),
          const SizedBox(height: 20),
          Text(
            'What is your favorite country?',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
              height: MediaQuery.of(context).size.height * .14,
              child: const GridViewitemscountry()),
          const SizedBox(height: 20),
          Text(
            'All Recipes ',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          const Expanded(child: ListviewInHome()),
        ],
      ),
    );
  }
}
