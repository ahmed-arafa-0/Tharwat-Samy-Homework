import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData myIcon;
  const CustomAppBar({super.key, required this.title, required this.myIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        CustomIcon(myIcon: myIcon),
      ],
    );
  }
}
