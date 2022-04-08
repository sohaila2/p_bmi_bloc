import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_bmi_bloc/cubit/bmi_cubit.dart';
import 'package:p_bmi_bloc/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


        return MultiBlocProvider(

    providers: [
    BlocProvider(create: (context)=>BmiCubit())
    ],
    child: MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF24232F),
        accentColor: Color(0xFF1F1E29),
        scaffoldBackgroundColor: Color(0xFF2F2E3A),

      ),
      debugShowCheckedModeBanner: false,
    home: HomeView(),

    ),
      );

  }
}