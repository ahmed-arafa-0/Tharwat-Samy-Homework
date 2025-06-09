import 'package:flutter/material.dart';
import 'package:notes_app/styles/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final int maxLines;
  final Function(String?)? onSaved;
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.onSaved,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      cursorColor: AppColor.primaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        // hintStyle: TextStyle(color: AppColor.primaryColor),
        border: buildBoarder(),
        disabledBorder: buildBoarder(),
        enabledBorder: buildBoarder(),
        errorBorder: buildBoarder(),
        focusedBorder: buildBoarder(color: AppColor.primaryColor),
        focusedErrorBorder: buildBoarder(),
      ),
    );
  }

  OutlineInputBorder buildBoarder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
