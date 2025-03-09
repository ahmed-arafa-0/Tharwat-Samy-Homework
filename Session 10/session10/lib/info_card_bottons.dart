import 'package:flutter/material.dart';

import 'info_card_botton.dart';

class InfoCardButtons extends StatelessWidget {
  const InfoCardButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InfoCardButton(color: Colors.blue, icon: Icons.phone, label: "call"),
          InfoCardButton(
            color: Colors.green,
            icon: Icons.near_me,
            label: "route",
          ),
          InfoCardButton(
            color: Colors.purple,
            icon: Icons.share,
            label: "share",
          ),
        ],
      ),
    );
  }
}
