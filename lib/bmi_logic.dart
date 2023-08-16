import 'dart:math';

class BMILogic {
  int weight;
  int height;
  late double _bmi;

  BMILogic({
    required this.weight,
    required this.height,
  });

  String getBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getCategory() {
    if(_bmi > 25) {
      return "Overweight";
    } else if(_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getDiagnosis() {
    if(_bmi > 25) {
      return "You are over the average body weight. Start exercising!";
    } else if(_bmi > 18.5) {
      return "You have a normal body weight. Good Job!";
    } else {
      return "You have very low body weight. Start eating!";
    }
  }
}