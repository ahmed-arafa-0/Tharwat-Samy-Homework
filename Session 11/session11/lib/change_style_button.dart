import 'package:flutter/material.dart';

class ChangeStyleButton extends StatelessWidget {
  final Color color;
  final void Function() onPressed;
  final Color backgroundColor;
  final IconData icon;
  final String label;
  final double spacing;
  final MainAxisSize mainAxisSize;
  const ChangeStyleButton(
      {super.key,
      required this.color,
      required this.onPressed,
      required this.icon,
      required this.label,
      this.backgroundColor = Colors.white,
      this.spacing = 16,
      this.mainAxisSize = MainAxisSize.min});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: Row(
        spacing: spacing,
        mainAxisSize: mainAxisSize,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(
            label,
            style: TextStyle(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
