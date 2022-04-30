import 'dart:math';

class BmiCalculator {
  BmiCalculator(
    this.height,
    this.weight,
  );
  final int height;
  final int weight;
  double? _bmi;

  ///Calculate the bmi
  String calculateBmi() {
    ///get the bmi and convert the height to meters by dividing by 100
    _bmi = weight / pow((height / 100), 2);

    ///the to string as fixed returns a variable to string with indicated decimal places
    return _bmi!.toStringAsFixed(2);
  }

  ///Provide results from bmi calculation
  String getResults() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  ///Provide interpretation from bmi calculation
  String interpretResults() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. try to exercise more';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good Job !';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
