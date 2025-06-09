import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData myIcon;
  const CustomIcon({super.key, required this.myIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Icon(myIcon, size: 28)),
    );
  }
}
