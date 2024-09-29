import 'package:equatable/equatable.dart';
import 'package:coffee_app/src/entities/coffee_items.dart';

abstract class CoffeeCounterEvent extends Equatable {
  const CoffeeCounterEvent();

  @override
  List<Object> get props => [];
}

class IncrementCounter extends CoffeeCounterEvent {
  final Coffee coffee;

  const IncrementCounter(this.coffee);

  @override
  List<Object> get props => [coffee];
}

class DecrementCounter extends CoffeeCounterEvent {
  final Coffee coffee;

  const DecrementCounter(this.coffee);

  @override
  List<Object> get props => [coffee];
}

class AddCoffeeItem extends CoffeeCounterEvent {
  final Coffee coffee;

  const AddCoffeeItem({required this.coffee});

  @override
  List<Object> get props => [coffee];
}
class RemoveCoffeeItem extends CoffeeCounterEvent {
  final Coffee coffee;

  const RemoveCoffeeItem(this.coffee);

  @override
  List<Object> get props => [coffee];
}

class UpdateCoffeeSize extends CoffeeCounterEvent {
  final Coffee coffee;
  final CoffeeSize size;

  const UpdateCoffeeSize({required this.coffee, required this.size});
}
