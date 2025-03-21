import 'package:flutter/material.dart';
import '../widgets/back_arrow_btn.dart';
import '../widgets/onboarding_page_2_body.dart';

class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBar(leading: BackArrowBtn()),
      body: OnboardingPage2Body(),
    );
  }
}
