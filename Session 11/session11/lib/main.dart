import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const InteractiveUIDemoApp());
}

class InteractiveUIDemoApp extends StatelessWidget {
  final List<Color> colorList = const [
    Colors.indigo,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.blue,
    Colors.red,
    Colors.black,
    Colors.brown,
    Colors.green,
    Colors.teal,
  ];
  const InteractiveUIDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePage(
        colorList: colorList,
      ),
    );
  }
}
