import 'package:flutter/material.dart';
import '../widgets/answer_button.dart';
import '../models/questions_model_item.dart';
import '../models/quiz_controller.dart';

class ChoicesList extends StatefulWidget {
  final int currentIndex;

  const ChoicesList({super.key, required this.currentIndex});

  @override
  State<ChoicesList> createState() => _ChoicesListState();
}

class _ChoicesListState extends State<ChoicesList> {
  @override
  Widget build(BuildContext context) {
    final question = getQuestionsList[widget.currentIndex];

    return Column(
      children: List.generate(question.answers.length, (i) {
        final answerText = question.answers[i];
        final isSelected = question.chosenAnswers.contains(answerText);
        final isMultipleAnswer = question.isMultipleAnswer;

        return AnswerButton(
          answerText: answerText,
          isSelected: isSelected,
          isMultipleAnswer: isMultipleAnswer,
          onTap: () {
            setState(() {
              QuizController().toggleAnswer(
                question: question,
                answer: answerText,
              );
            });
          },
        );
      }),
    );
  }
}
