import 'package:flutter/material.dart';

class CounterValueTextSection extends StatelessWidget {
  final Color color;
  final int countValue;
  final String label;
  final double labelFontSize;
  final double counterFontSize;
  final FontWeight labelFontWeight;
  final FontWeight counterFontWeight;
  final double bottomSpace;
  const CounterValueTextSection({
    super.key,
    required this.color,
    required this.countValue,
    this.label = 'Counter Value',
    this.labelFontSize = 18,
    this.counterFontSize = 48,
    this.labelFontWeight = FontWeight.w500,
    this.counterFontWeight = FontWeight.w600,
    this.bottomSpace = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomSpace),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: labelFontSize,
              fontWeight: labelFontWeight,
            ),
          ),
          Text(
            countValue.toString(),
            style: TextStyle(
              color: color,
              fontSize: counterFontSize,
              fontWeight: counterFontWeight,
            ),
          ),
        ],
      ),
    );
  }
}
