import 'package:flutter/material.dart';

class InfoCardDivider extends StatelessWidget {
  const InfoCardDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Divider(),
    );
  }
}
