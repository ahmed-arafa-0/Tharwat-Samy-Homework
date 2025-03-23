// import 'package:flutter/material.dart';
// import 'package:fresh_fruits/models/custom_btn.dart';
// import 'package:fresh_fruits/widgets/dot_indecator_setion.dart';
// import '../models/custom_text.dart';
// import 'app_text.dart';
// import 'single_line_btn.dart';

// class OnboardingPage3Body extends StatelessWidget {
//   const OnboardingPage3Body({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Spacer(),
//         Image.asset('assets/images/delivery_image.png'),
//         SizedBox(height: 64),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 36.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               AppText(
//                 appTextModel: AppTextModel(
//                   text: 'Fast and responsibily delivery by our courir',
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: AppText(
//                   appTextModel: AppTextModel(
//                     text:
//                         'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
//                     fontSize: 14,
//                     isFontFamilyInter: false,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         DotIndecatorSetion(activeIndex: 2),
//         Spacer(),
//         SingleLineBtn(
//           singleLineButtonModel: SingleLineButtonModel(
//             label: "CREATE AN ACCOUNT",
//             backgroundColor: Colors.black,
//             labelColor: Colors.white,
//             onTap: () {},
//           ),
//         ),
//         SingleLineBtn(
//           singleLineButtonModel: SingleLineButtonModel(
//             label: "LOGIN",
//             backgroundColor: Colors.white,
//             labelColor: Colors.black,
//             onTap: () {},
//           ),
//         ),
//         SizedBox(height: 32),
//       ],
//     );
//   }
// }
