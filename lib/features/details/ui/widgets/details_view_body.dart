// details_view_body.dart
import 'package:flutter/material.dart';
import 'package:recipes/core/models/recpiesModel.dart';
import 'package:recipes/features/details/ui/widgets/backButton.dart';
import 'package:recipes/features/details/ui/widgets/bookmarkButton.dart';
import 'package:recipes/features/details/ui/widgets/detailsContent.dart';
import 'package:recipes/features/details/ui/widgets/topImage.dart'; 
class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.recpies});
 final Recpies recpies;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
               TopImage(recipes: recpies,),
              DetailsContent(recpies: recpies,),
            ],
          ),
          const BackButtonWidget(),
          const BookmarkButton(),
        ],
      ),
    );
  }
}
