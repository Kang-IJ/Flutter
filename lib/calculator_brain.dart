import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 35) {
      return 'Extremely Obese';
    } else if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 35) {
      return 'This number doesn\'t mean anything as long as you\'re healthy';
    } else if (_bmi >= 30) {
      return 'You are doing alright as long as you\'re feeling well.';
    } else if (_bmi >= 25) {
      return 'Your body mass is higher than normal, but who cares?';
    } else if (_bmi > 18.5) {
      return 'You\'re fit, according to body mass index calculator.';
    } else {
      return 'Your body mass is lower than normal, but who cares?';
    }
  }
}
