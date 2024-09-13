part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

//first
class increamentCounter extends CounterEvent {}

//seconed
class decreamentCounter extends CounterEvent {}

//third
class ResetCounter extends CounterEvent {}
