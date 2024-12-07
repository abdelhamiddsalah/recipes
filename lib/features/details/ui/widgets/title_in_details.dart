import 'package:flutter/material.dart';
import 'package:recipes/core/models/recpiesModel.dart';
import 'package:recipes/features/details/ui/widgets/rowstar.dart';

class TitleInDetails extends StatelessWidget {
  const TitleInDetails({
    super.key,
    required this.recpies,
  });

  final Recpies recpies;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            recpies.strMeal.toString(),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const rowstar(), 
      ],
    );
  }
}
