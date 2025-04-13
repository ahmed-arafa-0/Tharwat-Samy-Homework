import 'package:flutter/material.dart';
import 'package:quiz_app/styles/app_text_style.dart';
import '../styles/app_color.dart';

class AnswerButton extends StatelessWidget {
  final bool isSelected, isMultipleAnswer;
  final String answerText;
  final VoidCallback onTap;

  const AnswerButton({
    super.key,
    required this.isSelected,
    required this.answerText,
    required this.onTap,
    required this.isMultipleAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: isSelected ? Color(0xFFC4BFFA) : Colors.white,
        child: ListTile(
          leading: Icon(
            isSelected
                ? isMultipleAnswer
                    ? Icons.check_circle_outline_outlined
                    : Icons.check_circle
                : Icons.circle_outlined,
            color: AppColor.primaryColor,
          ),
          title: Text(
            answerText,
            style: AppTextStyle.h3regular16.copyWith(
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
