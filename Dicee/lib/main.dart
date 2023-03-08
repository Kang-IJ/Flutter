import 'dart:math';
import 'package:flutter/material.dart';
import 'package:dicee/each_dice.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  String result = '비겼네요!';

  void diceChange() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;

      if (leftDiceNumber > rightDiceNumber) {
        result = '왼쪽이 더 크네요!';
      } else if (leftDiceNumber < rightDiceNumber) {
        result = '오른쪽이 더 크네요!';
      } else {
        result = '비겼네요!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              EachDice(diceChange: diceChange, diceNumber: leftDiceNumber),
              EachDice(diceChange: diceChange, diceNumber: rightDiceNumber),
            ],
          ),
          Visibility(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                result,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
