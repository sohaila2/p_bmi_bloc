import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_bmi_bloc/components/Calculate_bottom.dart';
import 'package:p_bmi_bloc/components/row_gender.dart';
import 'package:p_bmi_bloc/components/height.dart';
import 'package:p_bmi_bloc/components/row_weight_age.dart';
import 'package:p_bmi_bloc/cubit/bmi_cubit.dart';
import 'package:p_bmi_bloc/views/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:p_bmi_bloc/models/calculate_result.dart';


class HomeView extends StatelessWidget {
  Color inactiveColor = Color(0xFF24232F);
  Color activeColor = Colors.blueGrey;

 var cubit = BmiCubit.get(context);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => BmiCubit(),

      child: BlocConsumer<BmiCubit, BmiState>(
      listener: (context, state) {},
    builder: (context, state) {
     return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
                "BMI"
            ),
          ),
        ),
        body: Column(
          children: [
         RowGender(),
            
            SizedBox(
              height: 10.0,
            ),

            Height(),

            SizedBox(
              height: 10.0,
            ),
            WeightAge(),

            SizedBox(
              height: 10.0,
            ),

           CalculateBottom(),

          ],

        ),

      );
    }

      ),
    );
  }


}

