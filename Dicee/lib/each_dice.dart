import 'package:flutter/material.dart';

class EachDice extends StatelessWidget {
  final Function? diceChange;
  int? diceNumber;

  EachDice({this.diceChange, this.diceNumber});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: TextButton(
          onPressed: () {
            diceChange!();
          },
          child: Image.asset('images/dice$diceNumber.png'),
        ),
      ),
    );
  }
}
