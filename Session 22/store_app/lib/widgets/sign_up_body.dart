import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants/assets.dart';
import '../cubits/sign_up_cubit/sign_up_cubit.dart';
import '../styles/app_colors.dart';
import '../styles/app_text_style.dart';
import 'custom_button.dart';
import 'custome_text_field pass.dart';
import 'custome_text_field.dart';

class SignUpbody extends StatelessWidget {
  const SignUpbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: -3,
          child: Image.asset(
            Assets.assetsImagesBackgroundImage,
            fit: BoxFit.fill,
            width: MediaQuery.sizeOf(context).width,
          ),
        ),
        Positioned(
          left: 0,
          top: 332,
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: 900,
            decoration: ShapeDecoration(
              color: const Color(0xFFFAFEFC),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Create your account",
                          style: AppTextStyle.bold24Poppins,
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomeTextFeild(hintText: "First Name"),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: CustomeTextFeild(hintText: "Last Name"),
                        ),
                      ],
                    ),
                  ),
                  CustomeTextFeild(hintText: "E-mail Address"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: CustomeTextFeildPassword(hintText: "Password"),
                  ),
                  Text(
                    'By tapping Sign up you accept all ',
                    style: AppTextStyle.regular14Poppins,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'terms',
                        style: AppTextStyle.regular14Poppins.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Text(' and '),
                      Text(
                        'conditions',
                        style: AppTextStyle.regular14Poppins.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  CustomButton(
                    onPressed: () {
                      BlocProvider.of<SignUpCubit>(context).signUp();
                    },
                    text: 'CREATE AN ACCOUNT',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
