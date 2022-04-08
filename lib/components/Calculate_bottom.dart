import 'dart:js';

import 'package:flutter/material.dart';
import 'package:p_bmi_bloc/cubit/bmi_cubit.dart';
import 'package:p_bmi_bloc/models/calculate_result.dart';
import 'package:p_bmi_bloc/views/result_screen.dart';

class CalculateBottom extends StatelessWidget {

  var cubit = BmiCubit.get(context);
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
        color: Color(888888),
        child: Center(
          child: Text("calculate",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),

      onTap: (){
        //navigateToResultScreen(12.0);
      },
    );
  }
// void navigateToResultScreen(double result)
  //{
  //  CalculateResult obj = CalculateResult(cubit.height, cubit.height);
   // Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(obj.calculateResult(),obj.msg!,obj.calculateBmiCategory())));
 // }

}
