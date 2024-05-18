import 'package:equatable/equatable.dart';

class CoffeeCounterState extends Equatable {
  final int counter;

  const CoffeeCounterState({required this.counter});

  @override
  List<Object> get props => [counter];
}