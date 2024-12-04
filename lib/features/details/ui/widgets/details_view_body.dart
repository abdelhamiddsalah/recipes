// details_view_body.dart
import 'package:flutter/material.dart';
import 'package:recipes/features/details/ui/widgets/backButton.dart';
import 'package:recipes/features/details/ui/widgets/bookmarkButton.dart';
import 'package:recipes/features/details/ui/widgets/detailsContent.dart';
import 'package:recipes/features/details/ui/widgets/topImage.dart';


class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              TopImage(),
              DetailsContent(),
            ],
          ),
          BackButtonWidget(),
          BookmarkButton(),
        ],
      ),
    );
  }
}
