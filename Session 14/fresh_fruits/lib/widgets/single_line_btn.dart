import 'package:flutter/material.dart';
import '../styles/app_styles.dart';
import '../models/custom_btn.dart';

class SingleLineBtn extends StatelessWidget {
  const SingleLineBtn({super.key, required this.singleLineButtonModel});
  final SingleLineButtonModel singleLineButtonModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: singleLineButtonModel.onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: singleLineButtonModel.backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side:
                      singleLineButtonModel.backgroundColor == Colors.white
                          ? BorderSide(color: Colors.black, width: 2)
                          : BorderSide(
                            color: singleLineButtonModel.backgroundColor,
                          ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  singleLineButtonModel.label,
                  style: AppTextStyle.bold16Inter.copyWith(
                    color: singleLineButtonModel.labelColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
