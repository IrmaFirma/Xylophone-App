import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'constants.dart';

void main() {
  runApp(const MaterialApp(
    home: XylophoneApp(),
  ));
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PlayTileContainer(color: color1, soundNum: 1),
          PlayTileContainer(color: color2, soundNum: 2),
          PlayTileContainer(color: color3, soundNum: 3),
          PlayTileContainer(color: color4, soundNum: 4),
          PlayTileContainer(color: color5, soundNum: 5),
          PlayTileContainer(color: color6, soundNum: 6),
          PlayTileContainer(color: color7, soundNum: 7),
        ],
      ),
    );
  }
}

class PlayTileContainer extends StatelessWidget {

  void playTileSound(int soundNum) async {
    final player = AudioPlayer();
    await player.play(AssetSource('assets_note$soundNum.wav'));
  }
  final Color color;
  final int soundNum;
  const PlayTileContainer(
      {super.key, required this.color, required this.soundNum});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        height: 100,
        child: GestureDetector(onTap: () => playTileSound(soundNum))
      ),
    );
  }
}
