import 'package:chat_app/styles/app_colors.dart';
import 'package:chat_app/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomPassTextFormField extends StatefulWidget {
  final String text;
  final IconData prefixIcon;
  final Function(String)? onChanged;
  final FormFieldValidator<String>? validator;
  const CustomPassTextFormField({
    super.key,
    required this.text,
    this.prefixIcon = Icons.password,
    this.onChanged,
    this.validator,
  });

  @override
  State<CustomPassTextFormField> createState() =>
      _CustomPassTextFormFieldState();
}

class _CustomPassTextFormFieldState extends State<CustomPassTextFormField> {
  bool isNotVisiable = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        onChanged: widget.onChanged,
        obscureText: isNotVisiable,
        cursorColor: AppColors.secondaryColor,
        cursorErrorColor: AppColors.errorColor,
        style: AppTextStyle.regularSecondaryColor,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.prefixIcon),
          prefixIconColor: AppColors.secondaryColor,
          suffixIcon: IconButton(
            onPressed: () {
              isNotVisiable = !isNotVisiable;
              setState(() {});
            },
            icon:
                isNotVisiable
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
          ),
          suffixIconColor: AppColors.secondaryColor,
          hintText: widget.text,
          hintStyle: AppTextStyle.regularSecondaryColor,
          errorStyle: AppTextStyle.regularSecondaryColor.copyWith(
            color: AppColors.errorColor,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondaryColor),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.errorColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.errorColor),
          ),
        ),
        validator: widget.validator,
      ),
    );
  }
}
