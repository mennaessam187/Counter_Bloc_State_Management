import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

int counter = 0;

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is increamentCounter) {
        counter = counter + 1;
        emit(counterchangedstate(counter: counter));
      } else if (event is decreamentCounter) {
        counter = counter - 1;
        emit(counterchangedstate(counter: counter));
      } else {
        counter = 0;
        emit(counterchangedstate(counter: counter));
      }
    });
  }
}
