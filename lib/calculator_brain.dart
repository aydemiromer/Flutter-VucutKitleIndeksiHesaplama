import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 35) {
      return 'Obezite';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Zayıf';
    }
  }

  String getInterpretation() {
    if (_bmi >= 35) {
      return 'Kilonuz Normal degerden fazladır, egzersiz yapmayı deneyin!';
    } else if (_bmi > 18.5) {
      return 'Normal vücuda sahipsiniz korumaya devam edin.';
    } else {
      return 'Normal değerlerin altındasınız daha fazla yemeye çalışın!';
    }
  }
}
