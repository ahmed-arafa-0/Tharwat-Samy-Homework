import 'package:flutter/material.dart';
import 'package:session11/change_style_button.dart';

class ChangeStyleSection extends StatelessWidget {
  final Color color;
  final void Function() onPressedChangeColorBTN;
  final void Function() onPressedChangeSizeBTN;
  const ChangeStyleSection({
    super.key,
    required this.color,
    required this.onPressedChangeColorBTN,
    required this.onPressedChangeSizeBTN,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ChangeStyleButton(
          color: color,
          onPressed: onPressedChangeColorBTN,
          icon: Icons.color_lens,
          label: 'Chanqe Color',
        ),
        ChangeStyleButton(
          color: color,
          onPressed: onPressedChangeSizeBTN,
          icon: Icons.format_size,
          label: 'Chanqe Size',
        ),
      ],
    );
  }
}
