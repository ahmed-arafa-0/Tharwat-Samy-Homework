import 'package:flutter/material.dart';

import 'fansy_box.dart';

class FansyBoxSection extends StatelessWidget {
  const FansyBoxSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Color(0xFFB8BDD9),
        child: Column(
          children: [
            // Text
            Text(
              "Fancy Section",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4552B3),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FancyBox(
                  color: Color(0xFF7E57C2),
                  text: '1',
                ),
                FancyBox(
                  color: Color(0xFFAA47BC),
                  text: '2',
                ),
                FancyBox(
                  color: Color(0xFF9675CE),
                  text: '3',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FancyBox(
                  color: Color(0xFFB968C7),
                  text: '4',
                ),
                FancyBox(
                  color: Color(0xFFB39DDB),
                  text: '5',
                ),
                FancyBox(
                  color: Color(0xFFCF93D9),
                  text: '6',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
