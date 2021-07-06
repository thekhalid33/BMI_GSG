import 'dart:math';

import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({this.height, this.weight});

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  List<dynamic> getResult() {
    if (_bmi >= 25) {
      return ['over'.tr(), Colors.red];
    } else if (_bmi > 18.5) {
      return ['normal'.tr(), Colors.green];
    } else {
      return ['under'.tr(), Colors.deepPurpleAccent];
    }
  }
}
