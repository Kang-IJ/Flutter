import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MagicBall(),
    ),
  );
}

class MagicBall extends StatelessWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class MagicBallImage extends StatefulWidget {
  const MagicBallImage({Key? key}) : super(key: key);

  @override
  State<MagicBallImage> createState() => _MagicBallImageState();
}

class _MagicBallImageState extends State<MagicBallImage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
