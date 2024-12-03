import 'package:flutter/material.dart';
import 'package:recipes/features/Onbording/ui/pages/onboardingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
   //   home:  Onbording(),
    );
  }
}

 