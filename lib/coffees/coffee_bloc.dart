

import 'package:coffee_app/coffees/coffee_event.dart';
import 'package:coffee_app/coffees/coffee_parameters.dart';
import 'package:coffee_app/coffees/coffee_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoffeeBloc extends Bloc<CoffeeEvent,CoffeeState>{
  final List<Coffee> allCoffees = items;

  CoffeeBloc() : super(CoffeeInitial()) {
    on<LoadCoffee>((event, emit) {
      emit(CoffeeLoading());
      try {
        emit(CoffeeLoaded(allCoffees));  
      }
      catch (e) {
        emit(const CoffeeError('Failed'));
      }
    });
    on<FilterCoffeesByType>((event, emit) {
      emit (CoffeeLoading());
      try {
        final filteredCoffees = getItemsByType(event.coffeeType);
        emit (CoffeeLoaded(filteredCoffees));
      } catch (e) {emit(const CoffeeError('Error'));
      }
    });
    
  }
}