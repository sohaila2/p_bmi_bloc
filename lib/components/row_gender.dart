import 'dart:js';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:p_bmi_bloc/cubit/bmi_cubit.dart';
enum Gender
{
  male,
  female,

}
class RowGender extends StatelessWidget {
  Gender? selectedGender;
  Color inactiveColor = Color(0xFF24232F);
  Color activeColor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: ()
            {

              // setState(() {
              //   selectedGender==Gender.male;
              //  });
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: selectedGender==Gender.male?activeColor:inactiveColor
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.male,
                    color: Colors.white,
                    size: 45.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("male",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),)
                ],
              ),
            ),
          ),
        ),

        //////////////////////female

        Expanded(
          child: GestureDetector(
            onTap: ()
            {
              // setState(() {
              //   selectedGender==Gender.female;
              //  });
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: selectedGender==Gender.female?activeColor:inactiveColor
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.female,
                    color: Colors.white,
                    size: 45.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("female",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
