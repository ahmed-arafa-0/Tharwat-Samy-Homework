import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/styles/app_color.dart';
import 'package:quiz_app/styles/app_text_style.dart';

import '../constants/assets.dart';

class QuestionNoWidget extends StatelessWidget {
  final int questionNo;
  const QuestionNoWidget({
    super.key,
    required this.questionNo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: AppColor.secondryColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            color: Color(0xFFB8B2FF),
          ),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.images[questionNo],
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Question ${questionNo + 1}',
            style: AppTextStyle.h4regular12,
          ),
        ],
      ),
    );
  }
}
