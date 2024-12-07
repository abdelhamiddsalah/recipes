import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes/features/home/logic/cubit/home_cubit.dart';
import 'package:recipes/features/home/ui/widgets/bottomItem.dart';
import 'package:recipes/features/home/ui/widgets/shimmerHome.dart';
import 'package:shimmer/shimmer.dart';

class ListviewInHome extends StatelessWidget {
  const ListviewInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoaded) {
          return ListView.builder(
            itemCount: state.resipes.length,
            itemBuilder: (context, builder) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Bottomitem(
                  recipes: state.resipes[builder],
                ),
              );
            },
          );
        } else {
          return const Shimmerhome();
      
        }
      },
    );
  }
}

