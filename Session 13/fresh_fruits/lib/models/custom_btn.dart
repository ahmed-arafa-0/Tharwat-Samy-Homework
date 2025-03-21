import 'package:flutter/material.dart';

class SingleLineButtonModel {
  final String label;
  final Color backgroundColor, labelColor;
  final VoidCallback onTap;

  SingleLineButtonModel({
    required this.label,
    required this.backgroundColor,
    required this.labelColor,
    required this.onTap,
  });
}
