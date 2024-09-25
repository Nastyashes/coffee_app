import 'package:equatable/equatable.dart';
import 'package:coffee_app/src/entities/coffee_items.dart';

class CoffeeCounterState extends Equatable {
  final Map<Coffee, int> coffeeCounts;

  const CoffeeCounterState({required this.coffeeCounts});

  @override
  List<Object> get props => [coffeeCounts];

  CoffeeCounterState copyWith({Map<Coffee, int>? coffeeCounts}) {
    return CoffeeCounterState(
      coffeeCounts: coffeeCounts ?? this.coffeeCounts,
    );
  }
}
