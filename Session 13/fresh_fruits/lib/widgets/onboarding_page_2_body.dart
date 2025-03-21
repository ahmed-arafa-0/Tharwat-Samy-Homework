import 'package:flutter/material.dart';
import 'package:fresh_fruits/models/custom_btn.dart';
import 'package:fresh_fruits/widgets/dot_indecator_setion.dart';
import '../models/custom_text.dart';
import '../views/onboarding_page_3.dart';
import 'app_text.dart';
import 'single_line_btn.dart';

class OnboardingPage2Body extends StatelessWidget {
  const OnboardingPage2Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(),
        Image.asset('assets/images/onBoarding_fruit_image.png'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppText(
                appTextModel: AppTextModel(
                  text: 'We provide best quality Fruits to your family',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: AppText(
                  appTextModel: AppTextModel(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed ',
                    fontSize: 14,
                    isFontFamilyInter: false,
                  ),
                ),
              ),
            ],
          ),
        ),
        DotIndecatorSetion(activeIndex: 1),
        Spacer(),
        SingleLineBtn(
          singleLineButtonModel: SingleLineButtonModel(
            label: "NEXT",
            backgroundColor: Color(0xFFFEC54B),
            labelColor: Colors.black,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return OnBoardingPage3();
                  },
                ),
              );
            },
          ),
        ),
        SizedBox(height: 32),
      ],
    );
  }
}
