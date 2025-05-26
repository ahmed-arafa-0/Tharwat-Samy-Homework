import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final String tuneName;
  final Color color;

  const TuneModel({required this.tuneName, required this.color});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(tuneName));
  }
}
