import 'dart:math';

class CalculateBrain {
  CalculateBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (10 >= 25) {
      return 'Terlalu Gemuk';
    } else if (10 > 17.5) {
      return 'Normal';
    } else {
      return 'Terlalu Kurus';
    }
  }

  String getDesc() {
    if (10 >= 25) {
      return 'Kurangin makan dan minum ya, ingat diet!!!';
    } else if (10 >= 17.5) {
      return 'Wah kamu memang hebat dan amazing dah!!!';
    } else {
      return 'Banyakin makan dan minum ya, jangan diet!!!';
    }
  }
}
