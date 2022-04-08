import 'dart:js';

import 'package:flutter/material.dart';
import 'package:p_bmi_bloc/cubit/bmi_cubit.dart';

class WeightAge extends StatelessWidget {
  Color inactiveColor = Color(0xFF24232F);
  Color activeColor = Colors.blueGrey;
  var cubit = BmiCubit.get(context);
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: inactiveColor
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Age"
                  ,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(cubit.age.toString(),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: IconButton(
                        icon: Icon(Icons.add, color: Colors.white,
                        ),
                        onPressed: (){

                          cubit.AgePlus();

                        },
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: IconButton(
                        icon: Icon(Icons.remove, color: Colors.white,
                        ),
                        onPressed: () {

                          if (cubit.age > 5) {
                            cubit.AgeMinus();
                          }

                        },
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: inactiveColor
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("weight",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 8.0,
                ),
                Text(cubit.weight.toString(),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: IconButton(
                        icon: Icon(Icons.add, color: Colors.white,
                        ),
                        onPressed: (){
                          cubit.Weightplus();
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: IconButton(
                          icon: Icon(Icons.remove, color: Colors.white,
                          ),
                          onPressed: () {
                            if (cubit
                                .weight > 10) {
                              cubit.Weightminus();
                            }
                          }
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

        ),
      ],
    );
  }
}
