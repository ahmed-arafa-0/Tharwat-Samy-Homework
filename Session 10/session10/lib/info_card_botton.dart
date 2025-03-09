import 'package:flutter/material.dart';

class InfoCardButton extends StatelessWidget {
  final String label;
  final MaterialColor color;
  final IconData icon;
  const InfoCardButton({
    super.key,
    required this.label,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color[100],
          child: Icon(icon, color: color),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            label.toUpperCase(),
            style: TextStyle(color: color, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
