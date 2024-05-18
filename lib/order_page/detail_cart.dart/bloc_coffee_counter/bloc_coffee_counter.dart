import 'package:bloc/bloc.dart';
import 'event_coffee_counter.dart';
import 'state_coffee_counter.dart';

class CoffeeCounterBloc extends Bloc<CoffeeCounterEvent, CoffeeCounterState> {
  CoffeeCounterBloc() : super(const CoffeeCounterState(counter: 1)) {
    on<IncrementCounter>((event, emit) {
      emit(CoffeeCounterState(counter: state.counter + 1));
    });

    on<DecrementCounter>((event, emit) {
      if (state.counter > 1) {
        emit(CoffeeCounterState(counter: state.counter - 1));
      }
    });
  }
}