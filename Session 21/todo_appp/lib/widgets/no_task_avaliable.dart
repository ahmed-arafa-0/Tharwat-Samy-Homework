import 'package:flutter/material.dart';
import 'package:todo_appp/styles/color_styles.dart';

class NoTaskAvaliable extends StatelessWidget {
  const NoTaskAvaliable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.check_circle_outline,
          color: ColorStyles.primatyShadeColor,
          size: 100,
        ),
        SizedBox(height: 5),
        Text(
          "No Tasks yet",
          style: TextStyle(
            color: ColorStyles.secondryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Add a task to get started",
          style: TextStyle(color: ColorStyles.tritaryColor),
        ),
      ],
    );
  }
}
