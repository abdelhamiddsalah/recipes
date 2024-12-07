import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes/core/models/recpiesModel.dart';
import 'package:recipes/features/home/ui/widgets/desc_in_item.dart';

class Bottomitem extends StatelessWidget {
  const Bottomitem({super.key, required this.recipes});
  final Recpies recipes;
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        GoRouter.of(context).push('/d',  extra: recipes,);
      },
      child:  Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      elevation: 10.0,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align to the left by default
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(
                  20), // Apply rounded corners to the image
              child: Container(
                width:double.infinity,
                height: MediaQuery.of(context).size.height * .2,
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: recipes.strMealThumb.toString(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),),
          const SizedBox(height: 10),
          desc_in_item(
            text: recipes.strMeal.toString(),
          ),
        ],
      ),
      )
    );
  }
}
