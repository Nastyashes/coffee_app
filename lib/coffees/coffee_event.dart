

import 'package:coffee_app/coffees/coffee_parameters.dart';
import 'package:equatable/equatable.dart';

abstract class CoffeeEvent extends Equatable {
  const CoffeeEvent();

@override

List<Object> get props => [];
}

class LoadCoffee extends CoffeeEvent{}

class FilterCoffeesByType extends CoffeeEvent{
  final CoffeeType coffeeType;
  const FilterCoffeesByType(this.coffeeType);
  
  @override
  List<Object> get props => [coffeeType];
}