import 'package:flutter/material.dart';
import 'change_style_section.dart';
import 'counter_value_text_section.dart';
import 'increment_button.dart';
import 'rectangle_box_widget.dart';

class HomePage extends StatefulWidget {
  final List<Color> colorList;
  const HomePage({
    super.key,
    required this.colorList,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int colorIndex = 0;
  int countValue = 0;
  bool isBigTextSize = true;

  void incrementValue() {
    countValue++;
    setState(() {});
  }

  void changeSize() {
    isBigTextSize = !isBigTextSize;
    setState(() {});
  }

  void changeColor() {
    if (colorIndex < widget.colorList.length - 1) {
      colorIndex++;
    } else {
      colorIndex = 0;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Interactive Ul Demo",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              widget.colorList[colorIndex],
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RectangleBoxWidget(
                color: widget.colorList[colorIndex],
                countValue: countValue,
                isBigTextSize: isBigTextSize,
              ),
              CounterValueTextSection(
                color: widget.colorList[colorIndex],
                countValue: countValue,
              ),
              ChangeStyleSection(
                color: widget.colorList[colorIndex],
                onPressedChangeColorBTN: changeColor,
                onPressedChangeSizeBTN: changeSize,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: IncrementButton(
        color: widget.colorList[colorIndex],
        onPressed: incrementValue,
      ),
    );
  }
}
