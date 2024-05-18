import 'package:equatable/equatable.dart';

abstract class CoffeeCounterEvent extends Equatable {
  const CoffeeCounterEvent();

  @override
  List<Object> get props => [];
}

class IncrementCounter extends CoffeeCounterEvent {}

class DecrementCounter extends CoffeeCounterEvent {}
