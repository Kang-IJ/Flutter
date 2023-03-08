import 'package:flutter/material.dart';
import 'package:xylophone/build_key.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(
                noteNumber: 1,
                color: Colors.red,
                noteName: 'Do',
              ),
              BuildKey(noteNumber: 2, color: Colors.orange, noteName: 'Re'),
              BuildKey(noteNumber: 3, color: Colors.yellow, noteName: 'Mi'),
              BuildKey(noteNumber: 4, color: Colors.green, noteName: 'Fa'),
              BuildKey(noteNumber: 5, color: Colors.teal, noteName: 'So'),
              BuildKey(noteNumber: 6, color: Colors.indigo, noteName: 'La'),
              BuildKey(noteNumber: 7, color: Colors.purple, noteName: 'Ti'),
            ],
          ),
        ),
      ),
    );
  }
}
