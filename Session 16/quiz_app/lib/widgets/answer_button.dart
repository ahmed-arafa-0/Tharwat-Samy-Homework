import 'package:flutter/material.dart';
import 'package:quiz_app/styles/app_text_style.dart';
import '../models/questions_model_item.dart';
import '../styles/app_color.dart';

// ignore: must_be_immutable
class AnswerButton extends StatefulWidget {
  final int questionIndex, answerIndex;
  const AnswerButton({
    super.key,
    required this.questionIndex,
    required this.answerIndex,
  });

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  bool isChoosen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isChoosen = !isChoosen;
        setState(() {});
      },
      child: Card(
        color: isChoosen ? Color(0xFFC4BFFA) : Colors.white,
        child: ListTile(
          leading: Icon(
            isChoosen ? Icons.check_circle_rounded : Icons.circle_outlined,
            color: AppColor.primaryColor,
          ),
          title: Text(
            getQuestionsList[widget.questionIndex].answers[widget.answerIndex],
            style: AppTextStyle.h3regular16.copyWith(
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
