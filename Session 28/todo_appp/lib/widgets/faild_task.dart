import 'package:flutter/material.dart';
import 'package:todo_appp/styles/color_styles.dart';

class FaliedTask extends StatelessWidget {
  final String error;
  const FaliedTask({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.error_outline,
          color: ColorStyles.primatyShadeColor,
          size: 100,
        ),
        SizedBox(height: 5),
        Text(
          "Faild To Update Tasks",
          style: TextStyle(
            color: ColorStyles.secondryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text("error", style: TextStyle(color: ColorStyles.tritaryColor)),
      ],
    );
  }
}
