import 'package:chat_app/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text, hyperlinkText;
  final VoidCallback onPressed;
  const CustomText({
    super.key,
    required this.text,
    required this.hyperlinkText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: AppTextStyle.regularSecondaryColor),
          GestureDetector(
            onTap: onPressed,
            child: Text(
              hyperlinkText,
              style: AppTextStyle.regularTertiaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
