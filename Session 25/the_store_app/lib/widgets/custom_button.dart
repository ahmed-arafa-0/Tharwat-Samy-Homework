import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/app_text_style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor, textColor, boarderColor;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = AppColors.primaryColor,
    this.boarderColor = AppColors.primaryColor,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        fixedSize: const Size(318, 60),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
          side: BorderSide(
            color: boarderColor,
            width: 2,
          ),
        ),
      ), // RoundedRectang1eBorder
      child: Text(
        text,
        style: AppTextStyle.bold16Poppins.copyWith(
          color: textColor,
        ),
      ),
    );
  }
}
