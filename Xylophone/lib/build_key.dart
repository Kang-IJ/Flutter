import 'package:flutter/material.dart';
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';

class BuildKey extends StatefulWidget {
  final int? noteNumber;
  final Color? color;
  final String? noteName;
  final bool? visibility;

  BuildKey(
      {this.noteNumber, this.color, this.noteName, this.visibility = false});

  @override
  State<BuildKey> createState() => _BuildKeyState();
}

class _BuildKeyState extends State<BuildKey> {
  void playSound(int num) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource('note$num.wav'),
    );
  }

  bool visibility = false;

  Timer visibilityTimer() => Timer(Duration(milliseconds: 700), () {
        setState(() {
          visibility = false;
        });
      });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(widget.noteNumber!);
          setState(() {
            visibility = true;
            visibilityTimer();
          });
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        child: Visibility(
          visible: visibility,
          child: Text(
            widget.noteName!,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
