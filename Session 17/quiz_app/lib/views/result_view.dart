import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_controller.dart';
import 'package:quiz_app/styles/app_color.dart';
import 'package:quiz_app/styles/app_text_style.dart';
import 'package:quiz_app/views/home_view.dart';

import '../models/questions_model_item.dart';
import '../widgets/text_custom_button.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    int score = QuizController().calculateScore(getQuestionsList);
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
                Spacer(),
                Text(
                  'Your Result is',
                  style: AppTextStyle.h3regular16,
                ),
                Text(
                  '$score points out of ${getQuestionsList.length} !',
                  style: AppTextStyle.h1regular24,
                ),
                Spacer(),
                TextCustomButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            QuizController().restartQuiz();
                            return HomeView();
                          },
                        ),
                      );
                    },
                    text: 'Retry Quiz'),
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
