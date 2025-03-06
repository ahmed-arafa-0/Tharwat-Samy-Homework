import 'package:flutter/material.dart';

class FancyBox extends StatelessWidget {
  final Color color;
  final String text;

  const FancyBox({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 18),
      child: Container(
        width: 60,
        height: 60,
        color: color,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
