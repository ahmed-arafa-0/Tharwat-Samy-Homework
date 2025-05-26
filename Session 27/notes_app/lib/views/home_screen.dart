import 'package:flutter/material.dart';
import 'package:tune_app/model/tune_model.dart';
import 'package:tune_app/widgets/tune_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<TuneModel> tuneList = const [
    TuneModel(tuneName: "note1.wav", color: Color(0xFFFF403C)),
    TuneModel(tuneName: "note2.wav", color: Color(0xFFFD9831)),
    TuneModel(tuneName: "note3.wav", color: Color(0xFFFDEB5E)),
    TuneModel(tuneName: "note4.wav", color: Color(0xFF32AF5A)),
    TuneModel(tuneName: "note5.wav", color: Color(0xFF009586)),
    TuneModel(tuneName: "note6.wav", color: Color(0xFF0096E7)),
    TuneModel(tuneName: "note7.wav", color: Color(0xFFA326A6)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF243139),
        title: Text("Flutter Tune"),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        elevation: 0,
      ),
      body: Column(
        children: tuneList.map((e) => TuneItem(tuneModel: e)).toList(),
      ),
    );
  }
}
