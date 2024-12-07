// ignore_for_file: file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes/core/constants/colors.dart';
import 'package:recipes/features/home/ui/pages/home_view.dart';

class CurvedNavbar extends StatefulWidget {
  const CurvedNavbar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CurvedNavbarState createState() => _CurvedNavbarState();
}

class _CurvedNavbarState extends State<CurvedNavbar> {
  int currentIndex = 0;
  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      const HomeView(), 
      const HomeView(),
      const HomeView(), 
      const HomeView(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex], 
      bottomNavigationBar: CurvedNavigationBar(
        height: 50.h,
        backgroundColor: mainColor,
        index: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const <Widget>[
          Icon(Icons.home_outlined),
          Icon(Icons.bookmark),
          Icon(Icons.search),
          Icon(Icons.home_outlined),
        ],
      ),
    );
  }
}