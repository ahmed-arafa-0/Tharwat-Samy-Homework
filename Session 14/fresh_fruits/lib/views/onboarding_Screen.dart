import 'package:flutter/material.dart';
import 'package:fresh_fruits/models/on_boarding_item_model.dart';

import '../models/custom_btn.dart';
import '../widgets/onboarding_page_1_body.dart';
import '../widgets/single_line_btn.dart';

// ignore: must_be_immutable
class OnBoardingPage1 extends StatelessWidget {
  final List<OnboardingPageBody> pageViewList = [
    OnboardingPageBody(
      pageView: OnBoardingItemModel(
        image: 'assets/images/onBoardingDelivery.svg',
        title: 'Welcome to Fresh Fruits\nGrocery application',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',

        descriptionColor: Colors.black.withOpacity(0.7),
        dotIndecatorIndex: 0,
        button: SingleLineBtn(
          singleLineButtonModel: SingleLineButtonModel(
            label: "NEXT",
            backgroundColor: Color(0xFFFEC54B),
            labelColor: Colors.black,
            onTap: () {},
          ),
        ),
      ),
    ),
    OnboardingPageBody(
      pageView: OnBoardingItemModel(
        image: 'assets/images/onBoardingDelivery.svg',
        title: 'Fast and responsibily delivery by our courir',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
        dotIndecatorIndex: 1,
        button: SingleLineBtn(
          singleLineButtonModel: SingleLineButtonModel(
            label: "NEXT2",
            backgroundColor: Color(0xFFFEC54B),
            labelColor: Colors.black,
            onTap: () {},
          ),
        ),
      ),
    ),
    OnboardingPageBody(
      pageView: OnBoardingItemModel(
        image: 'assets/images/onBoardingDelivery.svg',
        title: 'Welcome to Fresh Fruits\nGrocery application',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
        dotIndecatorIndex: 2,
        button: Column(
          children: [
            SingleLineBtn(
              singleLineButtonModel: SingleLineButtonModel(
                label: "CREATE AN ACCOUNT",
                backgroundColor: Colors.black,
                labelColor: Colors.white,
                onTap: () {},
              ),
            ),
            SingleLineBtn(
              singleLineButtonModel: SingleLineButtonModel(
                label: "LOGIN",
                backgroundColor: Colors.white,
                labelColor: Colors.black,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    ),
  ];
  OnBoardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBar(),
      body: PageView.builder(
        itemBuilder: (context, index) {
          return pageViewList[index];
        },
        itemCount: pageViewList.length,
      ),
    );
  }
}
