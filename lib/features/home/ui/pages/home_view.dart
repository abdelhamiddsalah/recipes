import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recipes/core/constants/colors.dart';
import 'package:recipes/features/home/ui/widgets/GridViewItemsCounty.dart';
import 'package:recipes/features/home/ui/widgets/appBarHomePage.dart';
import 'package:recipes/features/home/ui/widgets/containerItemCountry.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Appbarhomepage(),
            const SizedBox(height: 20),
            const Text(
              'What is your favorite country?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height*.14,
              child: GridViewitemscountry(),

            ),
             const SizedBox(height: 20),
              const Text(
              'All Recipes ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

