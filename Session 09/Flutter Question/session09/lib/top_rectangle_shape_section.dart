import 'package:flutter/material.dart';

import 'top_rectangle_shape.dart';

class TopRectangleShapeSection extends StatelessWidget {
  const TopRectangleShapeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TopRectangleShape(
          color: Color(0xFFEE534F),
          text: "A",
        ),
        TopRectangleShape(
          color: Color(0xFFFFA826),
          text: "B",
        ),
        TopRectangleShape(
          color: Color(0xFFFED734),
          text: "C",
        ),
      ],
    );
  }
}
