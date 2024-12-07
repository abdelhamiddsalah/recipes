import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes/core/api/dio_consumer.dart';
import 'package:recipes/core/api/repiesRepo.dart';
import 'package:recipes/features/home/data/countrys.dart';
import 'package:recipes/features/home/logic/cubit/home_cubit.dart';
import 'package:recipes/features/home/ui/widgets/listview_in_home.dart';

class Categorypage extends StatelessWidget {
  const Categorypage({super.key, required this.countrys});
  final Countrys countrys;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(Recpiesrepo(dioConsumer: DioConsumer(dio: Dio())))..fetchAllData(countrys.ap),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(countrys.flag, style: TextStyle(fontSize: 20.sp)),
              const SizedBox(width: 8),
              Text(
                countrys.name,
                style: TextStyle(fontSize: 16.sp),
              ),
            ],
          ),
        ),
        body: ListviewInHome()
      ),
    );
  }
}
