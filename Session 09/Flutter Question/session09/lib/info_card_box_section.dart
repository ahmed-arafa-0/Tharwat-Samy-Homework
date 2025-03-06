import 'package:flutter/material.dart';

import 'info_card_box.dart';

class InfoCardBoxSection extends StatelessWidget {
  const InfoCardBoxSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Info Cards",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF394DAC),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InfoCardBox(
              color: Color(0xFF299F92),
              number: "23",
              text: "Active",
            ),
            InfoCardBox(
              color: Color(0xFFF8B00B),
              number: "15",
              text: "Pending",
            ),
            InfoCardBox(
              color: Color(0xFF419A48),
              number: "7",
              text: "Completed",
            ),
          ],
        ),
      ],
    );
  }
}
