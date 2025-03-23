// import 'package:flutter/material.dart';
// import 'package:fresh_fruits/models/custom_btn.dart';
// import 'package:fresh_fruits/styles/app_styles.dart';
// import 'package:fresh_fruits/views/onboarding_page_2.dart';
// import 'package:fresh_fruits/widgets/dot_indecator_setion.dart';
// import 'single_line_btn.dart';

// class OnboardingPage1Body extends StatelessWidget {
//   const OnboardingPage1Body({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Spacer(),
//         Image.asset('assets/images/onBoarding_fruit_image.png'),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 32.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'Welcome to Fresh Fruits',
//                 style: AppTextStyle.bold24Poppins,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: AppText(
//                   appTextModel: AppTextModel(
//                     text: 'Grocery application',
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 8.0),
//                 child: AppText(
//                   appTextModel: AppTextModel(
//                     text:
//                         'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                     color: Color(0xFF4B4B4B),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         DotIndecatorSetion(activeIndex: 0),
//         Spacer(),
//         SingleLineBtn(
//           singleLineButtonModel: SingleLineButtonModel(
//             label: "NEXT",
//             backgroundColor: Color(0xFFFEC54B),
//             labelColor: Colors.black,
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return OnBoardingPage2();
//                   },
//                 ),
//               );
//             },
//           ),
//         ),
//         SizedBox(height: 32),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/models/on_boarding_item_model.dart';
import 'package:fresh_fruits/widgets/dot_indecator_setion.dart';

import '../styles/app_styles.dart';

class OnboardingPageBody extends StatelessWidget {
  final OnBoardingItemModel pageView;
  const OnboardingPageBody({super.key, required this.pageView});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(),
        SvgPicture.asset(pageView.image),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                pageView.title,
                style: AppTextStyle.bold24Poppins,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                pageView.description,
                style: AppTextStyle.regular14Poppins.copyWith(
                  color: pageView.descriptionColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        DotIndecatorSetion(activeIndex: pageView.dotIndecatorIndex),
        Spacer(),
        pageView.button,
        SizedBox(height: 32),
      ],
    );
  }
}
