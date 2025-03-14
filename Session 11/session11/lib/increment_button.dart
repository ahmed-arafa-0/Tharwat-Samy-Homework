import 'package:flutter/material.dart';

class IncrementButton extends StatelessWidget {
  final Color color;
  final void Function() onPressed;
  final String label;
  final IconData icon;
  final double iconSize;
  const IncrementButton({
    super.key,
    required this.color,
    required this.onPressed,
    this.label = 'Increament',
    this.icon = Icons.add,
    this.iconSize = 25,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      backgroundColor: color,
      label: Text(label),
      icon: Icon(
        icon,
        size: iconSize,
      ),
    );
  }
}
