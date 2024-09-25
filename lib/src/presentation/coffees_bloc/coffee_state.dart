
import 'package:coffee_app/src/entities/coffee_items.dart';
import 'package:equatable/equatable.dart';

abstract class CoffeeState extends Equatable {
  const CoffeeState();

  @override
  List<Object> get props => [];
}

class CoffeeInitial extends CoffeeState {}

class CoffeeLoading extends CoffeeState {}

class CoffeeLoaded extends CoffeeState {
  final List<Coffee> coffees;

  const CoffeeLoaded(this.coffees);

  @override
  List<Object> get props => [coffees];
}

class CoffeeError extends CoffeeState {
  final String message;

  const CoffeeError(this.message);

  @override
  List<Object> get props => [message];
}


