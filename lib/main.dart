import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}
class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundNum){
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildKey({Color color, int numSound}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          PlaySound(numSound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                buildKey(color: Colors.red, numSound: 1),
                buildKey(color: Colors.orange, numSound: 2),
                buildKey(color: Colors.yellow, numSound: 3),
                buildKey(color: Colors.green, numSound: 4),
                buildKey(color: Colors.blue, numSound: 5),
                buildKey(color: Colors.lightBlueAccent, numSound: 6),
                buildKey(color: Colors.purple, numSound: 7),
            ],
          ),
          ),
        ),
      );
    }
  }
