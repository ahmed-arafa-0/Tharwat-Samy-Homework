import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const TextStyle bold16Poppins = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
      color: Colors.black);

  static const TextStyle bold24Poppins = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins',
  );

  static const TextStyle bold38Poppins = TextStyle(
    color: Colors.white,
    fontSize: 38,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins',
  );

  static const TextStyle bold16Inter = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: 'Inter',
  );

  static const TextStyle regular14Poppins = TextStyle(
    fontSize: 14,
    fontFamily: 'Poppins',
  );
}
