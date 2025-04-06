import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_model_item.dart';
import 'package:quiz_app/styles/app_color.dart';
import 'package:quiz_app/styles/app_text_style.dart';
import 'package:quiz_app/widgets/answers_widget.dart';
import 'package:quiz_app/widgets/question_no_widget.dart';

import '../widgets/back_next_section.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({super.key});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  late PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: AppColor.gradiantBackgroundColor,
            radius: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuestionNoWidget(questionNo: currentIndex),
              SizedBox(
                height: 16,
              ),
              Expanded(
                flex: 9,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: getQuestionsList.length,
                  onPageChanged: (value) {
                    currentIndex = value;
                    setState(() {});
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getQuestionsList[index].question,
                          style: AppTextStyle.h1regular24,
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        AnswersWidget(
                          currentIndex: index,
                        ),
                      ],
                    );
                  },
                ),
              ),
              Spacer(),
              BackNextSection(
                pageController: pageController,
              ),
              SizedBox(
                height: 55,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
