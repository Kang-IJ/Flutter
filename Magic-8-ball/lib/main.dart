import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade300,
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.blueGrey.shade800,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNum = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNum.png'),
      ),
    );
  }
}
