import 'dart:js';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());

  static BmiCubit get(context) => BlocProvider.of(context);
  int height = 180;
  int weight = 30;
  int age = 15;
  var cubit = BmiCubit.get(context);
  void AgePlus()
  {
    age++;
    emit(BmiAgePlusState());
  }

  void AgeMinus()
  {
    age--;
    emit(BmiAgeMinusState());
  }

  void Weightplus()
  {
    weight++;
    emit(BmiWeightPlusState());
  }

  void Weightminus()
  {
    weight--;
    emit(BmiWeightMinusState());
  }



}
