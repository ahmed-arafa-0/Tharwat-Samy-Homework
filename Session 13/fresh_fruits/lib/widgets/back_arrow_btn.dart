import 'package:flutter/material.dart';

class BackArrowBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  const BackArrowBtn({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed:
          onPressed ??
          () {
            Navigator.pop(context);
          },
      icon: Icon(Icons.arrow_back, color: Color(0xFFE67F1E)),
    );
  }
}
