import 'dart:math';

class CalculateBrain {
  CalculateBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double? _bmi; // Changed to nullable and private

  String calculateBMI() { // Corrected method name
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1); // Ensured that _bmi is not null
  }

  String getResult() {
    if (_bmi == null) {
      throw Exception('BMI not calculated. Please call calculateBMI() first.');
    }
    if (_bmi! >= 25) {
      return 'OverWeight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }
  String getInterpetation(){
    if (_bmi == null) {
      throw Exception('BMI not calculated. Please call calculateBMI() first.');
    }
    if (_bmi! >= 25) {
      return 'You have higher than Normal body weight!, try to exercise more.';
    } else if (_bmi! > 18.5) {
      return 'You have Normal Body weight, Good job!';
    } else {
      return 'You have Lower than Normal body weight!, you can eat bit more.';
    }
  }
}
