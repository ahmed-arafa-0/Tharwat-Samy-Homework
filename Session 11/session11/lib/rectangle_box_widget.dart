import 'package:flutter/material.dart';

class RectangleBoxWidget extends StatelessWidget {
  final Color color;
  final int countValue;
  final bool isBigTextSize;
  final double radius;
  final double paddingSpace;
  final double width;
  final double height;
  final double bigTextSize;
  final double smallTextSize;
  const RectangleBoxWidget({
    super.key,
    required this.color,
    required this.countValue,
    required this.isBigTextSize,
    this.radius = 30,
    this.paddingSpace = 20,
    this.width = 256,
    this.height = 128,
    this.bigTextSize = 30,
    this.smallTextSize = 20,
  });

  String checkValueEvenOrOdd({required int countValue}) =>
      countValue % 2 == 0 ? "Even" : "Odd";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: paddingSpace),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color,
        ),
        child: Center(
          child: Text(
            "${checkValueEvenOrOdd(countValue: countValue)}: $countValue",
            style: TextStyle(
              fontSize: isBigTextSize ? bigTextSize : smallTextSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
