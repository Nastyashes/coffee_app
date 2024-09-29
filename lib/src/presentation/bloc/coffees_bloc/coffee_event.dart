import 'package:coffee_app/src/entities/coffee_items.dart';
import 'package:equatable/equatable.dart';


abstract class CoffeeEvent extends Equatable {
  const CoffeeEvent();

  @override
  List<Object> get props => [];
}

class LoadCoffee extends CoffeeEvent {}

class FilterCoffeesByType extends CoffeeEvent {
  final CoffeeType coffeeType;

  const FilterCoffeesByType(this.coffeeType);

  @override
  List<Object> get props => [coffeeType];
}

class SortCoffeesByLiked extends CoffeeEvent {}

class ToggleFavorite extends CoffeeEvent {
  final Coffee coffee;

  const ToggleFavorite(this.coffee);

  @override
  List<Object> get props => [coffee];
}

