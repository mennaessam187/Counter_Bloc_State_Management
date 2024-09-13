part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

// ignore: camel_case_types
class counterchangedstate extends CounterState {
  final int counter;
  counterchangedstate({required this.counter});
}
