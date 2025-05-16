import 'package:flutter/material.dart';
import 'package:store_app/styles/app_colors.dart';

class CustomeTextFeildPassword extends StatelessWidget {
  final String hintText;
  const CustomeTextFeildPassword({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,

      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.visibility_off),
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
