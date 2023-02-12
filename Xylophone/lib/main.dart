import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int num) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource('note$num.wav'),
    );
  }

  Expanded buildKey({int noteNum = 1, Color color = Colors.red}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNum);
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          color: color,
        ),
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
            children: [
              buildKey(noteNum: 1, color: Colors.red),
              buildKey(noteNum: 2, color: Colors.orange),
              buildKey(noteNum: 3, color: Colors.yellow),
              buildKey(noteNum: 4, color: Colors.green),
              buildKey(noteNum: 5, color: Colors.teal),
              buildKey(noteNum: 6, color: Colors.indigo),
              buildKey(noteNum: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
