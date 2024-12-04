// details_content.dart
import 'package:flutter/material.dart';
import 'package:recipes/core/constants/colors.dart';
import 'package:recipes/features/details/ui/widgets/title_in_details.dart';

class DetailsContent extends StatelessWidget {
  const DetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title_in_details(),
              SizedBox(height: 16),
              Text(
                'Description',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Indonesian Fried Chicken or Ayam Goreng, is a delicious and popular dish that showcases the vibrant flavors of Indonesian cuisine.',
                style: TextStyle(fontSize: 16, color: greyColor),
              ),
              SizedBox(height: 16),
              Text(
                'Ingredients',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '''
- 300 grams of egg noodles, boiled until tender
- 6 tbsp onion chicken oil
- 3 tsp soy sauce
- 2 bunch spring onions, chopped briefly 
- 250 grams chicken meat, diced
                ''',
                style: TextStyle(fontSize: 16, color: greyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
