// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:recipes/core/models/recpiesModel.dart';

class TopImage extends StatelessWidget {
  const TopImage({super.key, required this.recipes});
final Recpies recipes;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 330,
      width: double.infinity,
     decoration: BoxDecoration(
  image: DecorationImage(
    image: NetworkImage(recipes.strMealThumb.toString()),
    fit: BoxFit.fill,
    onError: (_, __) => const AssetImage('assets/images/placeholder.png'),
  ),
),
    );
  }
}
