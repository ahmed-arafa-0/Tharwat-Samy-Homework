import 'package:flutter/material.dart';

class DotIndecator extends StatelessWidget {
  final bool isActive;
  const DotIndecator({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      width: 23,
      height: 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: isActive ? Color(0xFF12B76A) : Color(0xFFF2F2F2),
      ),
    );
  }
}
