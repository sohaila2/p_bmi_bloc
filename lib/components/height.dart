import 'dart:js';

import 'package:flutter/material.dart';
import 'package:p_bmi_bloc/cubit/bmi_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Height extends StatelessWidget {
  Color inactiveColor = Color(0xFF24232F);
  Color activeColor = Colors.blueGrey;
  var cubit = BmiCubit.get(context);
  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: inactiveColor
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "HEIGHT",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(cubit.height.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      color: Colors.white,
                    ),
                  ),
                  Text("cm",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SliderTheme(data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.white,
                overlayColor: Color(0x291DE9B6),
                inactiveTrackColor: Colors.grey,
                thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: 16.0
                ),
                overlayShape: RoundSliderOverlayShape(
                    overlayRadius: 30.0
                ),
                thumbColor: Color(0xFF1DE9B6),
              ), child: Slider(
                value: cubit.height.toDouble(),
                min: 100.0,
                max: 250.0,
                onChanged: (double v){

                  cubit.height = v.round();

                },
              ))
            ],
          ),
        ),
      );
  }
}
