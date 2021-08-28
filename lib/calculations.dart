import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.heightFeet, this.heightInch, this.weight});

  final int heightFeet;
  final int heightInch;
  final int weight;
  double _bmi = 0;

  String calculate() {
    int height = heightFeet * 12 + heightInch;
    _bmi = weight / pow(height * 0.0254, 2);
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    if (_bmi >= 30) {
      return 'OBESE';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String advice() {
    if (_bmi >= 30) {
      return 'You have a much higher than normal body weight. Try to eat less and exercise more!';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more!';
    }
  }
}
