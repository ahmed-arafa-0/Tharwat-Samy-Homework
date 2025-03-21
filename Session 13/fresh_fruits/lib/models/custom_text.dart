import 'package:flutter/material.dart';

class AppTextModel {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final bool isFontFamilyInter;

  AppTextModel({
    required this.text,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.isFontFamilyInter = true,
  });
}
