import 'package:chat_app/styles/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const String _mainFontFamily = 'Pacifico';

  static const TextStyle regular36Pacifico = TextStyle(
    fontSize: 36,
    color: AppColors.secondaryColor,
    fontFamily: _mainFontFamily,
  );

  static const TextStyle regular24 = TextStyle(
    fontSize: 24,
    color: AppColors.secondaryColor,
  );

  static const TextStyle regularPrimaryColor = TextStyle(
    fontSize: 16,
    color: AppColors.primaryColor,
  );

  static const TextStyle regularSecondaryColor = TextStyle(
    color: AppColors.secondaryColor,
  );

  static const TextStyle regularTertiaryColor = TextStyle(
    color: AppColors.tertiaryColor,
  );
}


/*

TextStyle(color: Color(0xFFC4E9E3)
*/