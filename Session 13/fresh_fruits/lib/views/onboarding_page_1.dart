import 'package:flutter/material.dart';
import '../widgets/back_arrow_btn.dart';
import '../widgets/onboarding_page_1_body.dart';

class OnBoardingPage1 extends StatelessWidget {
  const OnBoardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBar(leading: BackArrowBtn(onPressed: () {})),
      body: OnboardingPage1Body(),
    );
  }
}
