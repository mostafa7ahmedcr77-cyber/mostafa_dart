// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UserBmiModel {
  String gender;
  int height;
  int weight;
  int age;
  UserBmiModel({
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
  });
  double get resulteBmi {
    double calculateBmi = (weight / pow(height / 100, 2)).roundToDouble();
    return calculateBmi;
  }

  String get stringView {
    if (resulteBmi < 18.5) {
      return 'UnderWeight';
    } else if (resulteBmi < 25) {
      return 'Normal';
    } else if (resulteBmi < 30) {
      return 'OverWeight';
    } else {
      return 'Obase';
    }
  }

  Color get categoryColor {
    switch (stringView) {
      case 'UnderWeight':
        return const Color(0xFF3F51B5);
      case 'Normal':
        return const Color(0xFF4CAF50);
      case 'OverWeight':
        return const Color(0xFFFF9800);
      case 'Obase':
        return const Color(0xFFF44336);
      default:
        return const Color(0xFF9E9E9E);
    }
  }

  String get healthAdvice {
    switch (stringView) {
      case 'UnderWeight':
        return "Consider consulting a healthcare provider about healthy weight gain strategies";
      case 'Normal':
        return "Great! Maintain your current lifestyle whith balanced diet and regular exercise";
      case 'OverWeight':
        return "Consider a balanced diet and increased physical activity to reach a healthier";
      case 'Obase':
        return "Consult with a healthcare provider for a personalized weight management plan";
      default:
        return "Consult with a healthcare provider for personalized advice";
    }
  }
}
