import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_model_item.dart';
import 'package:quiz_app/styles/app_color.dart';
import 'package:quiz_app/views/result_view.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class BackNextSection extends StatelessWidget {
  final PageController pageController;
  const BackNextSection({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          onPressed: () {
            if (pageController.page!.toInt() > 0) {
              pageController.previousPage(
                  duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            }
          },
          text: 'Back',
          backgroundColor: Colors.transparent,
          boarderColor: AppColor.secondryColor,
          iconData: Icons.arrow_back_ios_new,
          isIconBefore: true,
        ),
        Spacer(),
        CustomButton(
          onPressed: () {
            if (pageController.page!.toInt() < getQuestionsList.length - 1) {
              pageController.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            } else {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return ResultView();
                  },
                ),
              );
            }
          },
          text: 'Next',
          backgroundColor: AppColor.secondryColor,
          boarderColor: AppColor.secondryColor,
          iconData: Icons.arrow_forward_ios,
          isIconBefore: false,
        ),
      ],
    );
  }
}
