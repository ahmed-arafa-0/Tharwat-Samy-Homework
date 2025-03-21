import 'package:flutter/material.dart';
import 'views/splash_screen.dart';

void main() {
  runApp(const FreshFruitsApp());
}

class FreshFruitsApp extends StatelessWidget {
  const FreshFruitsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: OnBoardingPage1(),
      home: SplashScreen(),
    );
  }
}
