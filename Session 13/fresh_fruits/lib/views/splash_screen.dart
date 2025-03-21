import 'package:flutter/material.dart';
import 'package:fresh_fruits/models/custom_text.dart';
import 'package:fresh_fruits/views/onboarding_page_1.dart';
import 'package:fresh_fruits/widgets/app_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    excuteNaviagtion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEC54B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(flex: 3),
          Image.asset('assets/images/splash_logo_image.png', height: 197),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppText(
                appTextModel: AppTextModel(
                  text: 'Fresh Fruits',
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }

  void excuteNaviagtion() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return OnBoardingPage1();
          },
        ),
      );
    });
  }
}

/*
  void excuteNaviagtion() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return OnBoardingPage1();
      },))
    });
  }
  */
