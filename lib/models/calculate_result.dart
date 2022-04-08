import 'dart:math';


import 'package:flutter/material.dart';

class CalculateResult {

   final  int height;
   final  int weight;
   double? result;
   String? msg = "normal";
  CalculateResult(this.weight,this.height);


  String calculateResult(){
    result=weight/pow(height/100,2);
    return result!.toStringAsFixed(1);

  }

  String calculateBmiCategory() {
    if (result! < 18.5) {
      msg="underweight";
      return 'UNDERWEIGHT';
    } else if (result! >= 18.5 && result! < 25) {
      msg="Normal";
      return 'NORMAL';
    } else if (result! >= 25 && result! < 30) {
      msg="overweight";
      return 'OVERWEIGHT';
    } else if (result! >= 30 && result! < 35) {
      msg="obsee";
      return 'OBESE';
    } else {
      return 'EXTEREMELY OBESE';
    }
  }
}