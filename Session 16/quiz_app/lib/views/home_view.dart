import 'package:flutter/material.dart';
import 'package:quiz_app/styles/app_color.dart';
import 'package:quiz_app/styles/app_text_style.dart';
import 'package:quiz_app/views/question_view.dart';
import 'package:quiz_app/widgets/text_custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 74),
                Text(
                  'Good morning,',
                  style: AppTextStyle.h3regular16,
                ),
                Text(
                  'New topic is waiting',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                TextCustomButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return QuestionView();
                          },
                        ),
                      );
                    },
                    text: 'Start Quiz'),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
