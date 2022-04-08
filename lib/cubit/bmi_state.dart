part of 'bmi_cubit.dart';

@immutable
abstract class BmiState {}

class BmiInitial extends BmiState {}

class BmiWeightPlusState extends BmiState{}

class BmiWeightMinusState extends BmiState{}

class BmiAgePlusState extends BmiState{}

class BmiAgeMinusState extends BmiState{}