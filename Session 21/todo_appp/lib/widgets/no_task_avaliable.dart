import 'package:flutter/material.dart';

class NoTaskAvaliable extends StatelessWidget {
  const NoTaskAvaliable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.check_circle_outline, color: Color(0xFFA9CECA), size: 100),
        SizedBox(height: 5),
        Text(
          "No Tasks yet",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          "Add a task to get started",
          style: TextStyle(color: Colors.blueGrey),
        ),
      ],
    );
  }
}
