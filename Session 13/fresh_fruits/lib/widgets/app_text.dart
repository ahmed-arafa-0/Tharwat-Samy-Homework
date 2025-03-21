import 'package:flutter/material.dart';
import 'package:fresh_fruits/models/custom_text.dart';

class AppText extends StatelessWidget {
  final AppTextModel appTextModel;

  const AppText({super.key, required this.appTextModel});

  @override
  Widget build(BuildContext context) {
    return Text(
      appTextModel.text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: appTextModel.isFontFamilyInter ? 'Inter' : 'Poppins',
        fontSize: appTextModel.fontSize,
        fontWeight: appTextModel.fontWeight,
        color: appTextModel.color,
      ),
    );
  }
}
