import 'package:counterchangestate_bloc_cubit/business_logic_layers/bloc/counter_bloc.dart';
import 'package:counterchangestate_bloc_cubit/presentation/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homeScreen(),
      ),
    );
  }
}
