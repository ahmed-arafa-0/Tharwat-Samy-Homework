// import '../styles/app_colors.dart';
// import '../styles/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final IconData prefixIcon;
  final Function(String)? onChanged;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  const CustomTextFormField({
    super.key,
    required this.text,
    this.prefixIcon = Icons.email_outlined,
    this.onChanged,
    this.validator,
    this.controller,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        onChanged: onChanged,
        // cursorColor: AppColors.secondaryColor,
        // cursorErrorColor: AppColors.errorColor,
        // style: AppTextStyle.regularSecondaryColor,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: Icon(prefixIcon),
          // errorStyle: AppTextStyle.regularSecondaryColor.copyWith(
          //   color: AppColors.errorColor,
          // ),
          // prefixIconColor: AppColors.secondaryColor,
          // hintStyle: AppTextStyle.regularSecondaryColor,
          border: OutlineInputBorder(
            // borderSide: BorderSide(color: AppColors.secondaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            // borderSide: BorderSide(color: AppColors.secondaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            // borderSide: BorderSide(color: AppColors.secondaryColor),
          ),
          errorBorder: OutlineInputBorder(
            // borderSide: BorderSide(color: AppColors.errorColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            // borderSide: BorderSide(color: AppColors.errorColor),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
