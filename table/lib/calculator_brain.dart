import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  var height;
  var weight;
  var _bmi;
  final int age = 10;
  var result;

  String calculateBMI() {
    for (int i = weight; i <= age; ++i) {
      _bmi = ("${height} * ${weight} = ${height * weight}");
    }
    return _bmi.toString();
  }

  // String getResult() {
  //   if (_bmi >= 25) {
  //     return 'Overweight';
  //   } else if (_bmi > 18.5) {
  //     return 'Normal';
  //   } else {
  //     return 'Underweight';
  //   }
  // }

  // String getInterpretation() {
  //   if (_bmi >= 25) {
  //     return 'You have a higher than normal body weight. Try to exercise more.';
  //   } else if (_bmi >= 18.5) {
  //     return 'You have a normal body weight. Good job!';
  //   } else {
  //     return 'You have a lower than normal body weight. You can eat a bit more.';
  //   }
  // }
}
