import 'package:flutter/material.dart';

class OnBoardingItemModel {
  final String image, title, description;
  final int dotIndecatorIndex;
  final Widget button;
  final Color descriptionColor;

  OnBoardingItemModel({
    required this.image,
    required this.title,
    required this.description,
    required this.dotIndecatorIndex,
    required this.button,
    this.descriptionColor = Colors.black,
  });
}
