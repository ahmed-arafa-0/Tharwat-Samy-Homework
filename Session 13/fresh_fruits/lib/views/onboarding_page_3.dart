import 'package:flutter/material.dart';
import '../widgets/onboarding_page_3_body.dart';

class OnBoardingPage3 extends StatelessWidget {
  const OnBoardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBar(leading: SizedBox()),
      body: OnboardingPage3Body(),
    );
  }
}
