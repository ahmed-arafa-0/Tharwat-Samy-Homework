import 'package:flutter/material.dart';
import 'package:quiz_app/styles/app_color.dart';
import '../styles/app_text_style.dart';

class TextCustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor, textColor, boarderColor;
  const TextCustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = AppColor.tertiaryColor,
    this.boarderColor = AppColor.tertiaryColor,
    this.textColor = AppColor.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(50, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: boarderColor,
            width: 2,
          ),
        ),
      ), // RoundedRectang1eBorder
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppTextStyle.h2regular18.copyWith(
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
