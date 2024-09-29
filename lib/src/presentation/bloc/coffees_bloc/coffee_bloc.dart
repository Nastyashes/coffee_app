import 'package:coffee_app/src/entities/coffee_items.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'coffee_event.dart';
import 'coffee_state.dart';


class CoffeeBloc extends Bloc<CoffeeEvent, CoffeeState> {
  final List<Coffee> allCoffees = items;

  CoffeeBloc() : super(CoffeeInitial()) {
    on<LoadCoffee>((event, emit) {
      emit(CoffeeLoading());
      try {
        emit(CoffeeLoaded(allCoffees));
      } catch (e) {
        emit(const CoffeeError('Failed to load coffees'));
      }
    });

    on<FilterCoffeesByType>((event, emit) {
      emit(CoffeeLoading());
      try {
        final filteredCoffees = getItemsByType(event.coffeeType);
        emit(CoffeeLoaded(filteredCoffees));
      } catch (e) {
        emit(const CoffeeError('Error filtering coffees'));
      }
    });

    on<SortCoffeesByLiked>((event, emit) {
      emit(CoffeeLoading());
      try {
        final likedCoffees = getLikedItems();
        emit(CoffeeLoaded(likedCoffees));
      } catch (e) {
        emit(const CoffeeError('Error sorting liked coffees'));
      }
    });

    on<ToggleFavorite>((event, emit) {
      final updatedCoffee = event.coffee.copyWith(isLiked: !event.coffee.isLiked);
      final index = allCoffees.indexOf(event.coffee);
      allCoffees[index] = updatedCoffee;
      emit(CoffeeLoaded(List.from(allCoffees)));
    });

  }
}
