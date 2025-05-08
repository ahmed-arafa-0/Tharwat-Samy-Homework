import 'package:flutter/material.dart';
import '../constants/assets.dart';
import '../styles/app_text_style.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Assets.assetsImagesScholar),
        Text('Scholar Chat', style: AppTextStyle.regular36Pacifico),
      ],
    );
  }
}
