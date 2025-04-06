import 'package:flutter/material.dart';
import 'package:quiz_app/styles/app_color.dart';
import 'package:quiz_app/styles/app_text_style.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: AppColor.gradiantBackgroundColor,
            radius: 1,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Your Result is',
                  style: AppTextStyle.h3regular16,
                ),
                Text(
                  '40 points out of 40!',
                  style: AppTextStyle.h1regular24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
