import 'package:flutter/material.dart';
import 'package:session09/fansy_box_section.dart';
import 'info_card_box_section.dart';
import 'top_rectangle_shape_section.dart';

void main() {
  runApp(const Session09Assignment());
}

class Session09Assignment extends StatelessWidget {
  const Session09Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 350,
            height: 450,
            color: Color(0xffbbdefa),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TopRectangleShapeSection(),
                  FansyBoxSection(),
                  InfoCardBoxSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
