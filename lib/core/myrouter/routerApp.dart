import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes/core/api/dio_consumer.dart';
import 'package:recipes/core/api/repiesRepo.dart';
import 'package:recipes/features/Onbording/ui/pages/onboardingPage.dart';
import 'package:recipes/features/details/ui/details_view.dart';
import 'package:recipes/features/home/logic/cubit/home_cubit.dart';
import 'package:recipes/features/home/data/countrys.dart';
import 'package:recipes/features/home/ui/pages/home_view.dart';

 class Routerapp {

 

  static var router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return Onbording();
      },
    ),
    GoRoute(
      path: '/h',
      builder: (context, state) {
     
        return BlocProvider(
          create: (context) => HomeCubit(Recpiesrepo(dioConsumer: DioConsumer(dio: Dio())))..fetchAllData('a'),
          child: HomeView(),
        );
      },
    ),
    GoRoute(
      path: '/d',
      builder: (context, state) {
        return DetailsView();
      },
    ),
  ]);
}
