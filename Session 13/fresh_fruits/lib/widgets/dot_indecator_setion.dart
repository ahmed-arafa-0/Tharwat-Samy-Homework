import 'package:flutter/material.dart';
import 'package:fresh_fruits/widgets/dot_indecator.dart';

class DotIndecatorSetion extends StatelessWidget {
  final int activeIndex;
  final int dotsLength;
  const DotIndecatorSetion({
    super.key,
    required this.activeIndex,
    this.dotsLength = 3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < dotsLength; i++)
            DotIndecator(isActive: activeIndex == i ? true : false),
        ],
      ),
    );
  }
}
