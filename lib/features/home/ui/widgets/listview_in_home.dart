import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes/features/home/logic/cubit/home_cubit.dart';
import 'package:recipes/features/home/ui/widgets/bottomItem.dart';
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
          return ListView.builder(
             shrinkWrap: true,
           physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(vertical: 10),
             itemCount: 4,
             itemBuilder: (BuildContext context, int index) {
               return   Padding(
                 padding: const EdgeInsets.symmetric(vertical: 20.0),
                 child: Material(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(20),
                   elevation: 10.0,
                   child: Shimmer.fromColors(
                     baseColor:  Colors.grey,
                     highlightColor:  Colors.white,
                     child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                    ClipRRect(
                 borderRadius: BorderRadius.circular(16),
                 child: Container(
                
                   height: MediaQuery.of(context).size.height * .2,
                   width:double.infinity,
                  color: Colors.grey,
                 ),),
                SizedBox( height: 10,) ,
                 Container(
                   color: Colors.grey,
                   height:10 ,
                 width:  MediaQuery.of(context).size.width * .7,
                 ),
                  SizedBox( height: 10,) ,
                   Container(
                   color: Colors.grey,
                   height:10 ,
                 width:  MediaQuery.of(context).size.width * .4,
                 ),
                 SizedBox( height: 30,) ,
                 ],
               ),
                   ),
                 ),
               );
                   
           
          },
           );
      
        }
      },
    );
  }
}
