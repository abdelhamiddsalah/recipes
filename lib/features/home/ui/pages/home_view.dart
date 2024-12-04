import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recipes/core/constants/colors.dart';
import 'package:recipes/features/home/ui/widgets/GridViewItemsCounty.dart';
import 'package:recipes/features/home/ui/widgets/appBarHomePage.dart';
import 'package:recipes/features/home/ui/widgets/bodyHomePage.dart';
import 'package:recipes/features/home/ui/widgets/listview_in_home.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Bodyhomepage(),
    );
  }
}

