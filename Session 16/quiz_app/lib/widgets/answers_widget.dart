import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button.dart';

import '../models/questions_model_item.dart';

class AnswersWidget extends StatelessWidget {
  final int currentIndex;
  const AnswersWidget({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for (int i = 0; i < getQuestionsList[currentIndex].answers.length; i++)
        AnswerButton(
          questionIndex: currentIndex,
          answerIndex: i,
        ),
    ]);
  }
}
