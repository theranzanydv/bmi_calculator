import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  late double bmi;

  String calculateBMI() {
    bmi = (weight / pow(height / 100, 2));
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'Exercise and keep working out, you need to get into shape.';
    } else if (bmi > 18.5) {
      return 'Keep up with the eating and workouts.';
    } else {
      return 'Please take care of your health and try to eat more.';
    }
  }
}
