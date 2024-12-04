import 'package:go_router/go_router.dart';
import 'package:recipes/features/Onbording/ui/pages/onboardingPage.dart';
import 'package:recipes/features/details/ui/details_view.dart';
import 'package:recipes/features/home/ui/home_view.dart';

abstract class Routerapp {
  static var router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return  Onbording();
      },
    ),
    GoRoute(
      path: '/h',
      builder: (context, state) {
        return  HomeView();
      },
    ),
    GoRoute(
      path: '/h',
      builder: (context, state) {
        return  DetailsView();
      },
    ),
  ]);
}
