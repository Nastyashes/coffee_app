import 'package:coffee_app/src/entities/coffee_items.dart';
import 'package:coffee_app/src/presentation/bloc/bloc_coffee_counter/event_coffee_counter.dart';
import 'package:coffee_app/src/presentation/bloc/bloc_coffee_counter/state_coffee_counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoffeeCounterBloc extends Bloc<CoffeeCounterEvent, CoffeeCounterState> {
  CoffeeCounterBloc() : super(const CoffeeCounterState(coffeeCounts: {})) {

    on<AddCoffeeItem>((event, emit) {
      final newState = Map<Coffee, int>.from(state.coffeeCounts);
      if (newState.containsKey(event.coffee)) {
        newState[event.coffee] = newState[event.coffee]! + 1;
      } else {
        newState[event.coffee] = 1;
      }
      emit(CoffeeCounterState(coffeeCounts: newState));
    });

    on<IncrementCounter>((event, emit) {
      final newState = Map<Coffee, int>.from(state.coffeeCounts);
      if (newState.containsKey(event.coffee)) {
        newState[event.coffee] = newState[event.coffee]! + 1;
        emit(CoffeeCounterState(coffeeCounts: newState));
      }
    });

    on<DecrementCounter>((event, emit) {
      final newState = Map<Coffee, int>.from(state.coffeeCounts);
      if (newState.containsKey(event.coffee)) {
        final currentCount = newState[event.coffee]!;
        if (currentCount > 1) {
          newState[event.coffee] = currentCount - 1;
        } else {
          newState.remove(event.coffee);
        }
        emit(CoffeeCounterState(coffeeCounts: newState));
      }
    });

    on<RemoveCoffeeItem>((event, emit) {
      final newState = Map<Coffee, int>.from(state.coffeeCounts);
      if (newState.containsKey(event.coffee)) {
        newState.remove(event.coffee);
        emit(CoffeeCounterState(coffeeCounts: newState));
      }
    });

    
  on<UpdateCoffeeSize>((event, emit) {
    final updatedCoffeeCounts = Map<Coffee, int>.from(state.coffeeCounts);
    final updatedCoffee = event.coffee.copyWith(selectedSize: event.size);
    updatedCoffeeCounts[updatedCoffee] = updatedCoffeeCounts.remove(event.coffee) ?? 0;

    emit(state.copyWith(coffeeCounts: updatedCoffeeCounts));
  });
}

  }

