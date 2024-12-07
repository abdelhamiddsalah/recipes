import 'package:flutter/material.dart';
import 'package:recipes/core/models/recpiesModel.dart';
import 'package:recipes/features/details/ui/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.recpies});
 final Recpies recpies;
  @override
  Widget build(BuildContext context) {
    return DetailsViewBody(recpies: recpies,);
  }
}