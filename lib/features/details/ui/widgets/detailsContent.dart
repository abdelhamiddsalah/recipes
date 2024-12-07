// details_content.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes/core/constants/colors.dart';
import 'package:recipes/core/models/recpiesModel.dart';
import 'package:recipes/features/details/ui/widgets/title_in_details.dart';

class DetailsContent extends StatelessWidget {
  const DetailsContent({super.key, required this.recpies});
 final Recpies recpies;
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleInDetails(recpies: recpies,),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Category', style: TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text(
                    recpies.strCategory.toString(),
                    style: TextStyle(fontSize: 16.sp, color: greyColor),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                recpies.strInstructions.toString(),
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('Ingredients', style: TextStyle(color: mainColor, fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 20.h,),
              Text(
                '''
- 300 ${recpies.strIngredient1},
- 6 ${recpies.strIngredient2},
- 3 ${recpies.strIngredient3}
- 2 ${recpies.strIngredient4}
- 250 ${recpies.strIngredient5}
                ''',
                style: const TextStyle(fontSize: 20, color: greyColor,fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
