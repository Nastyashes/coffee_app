import 'package:coffee_app/src/presentation/bloc/bloc_coffee_counter/state_coffee_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coffee_app/src/entities/coffee_items.dart';
import 'package:coffee_app/src/presentation/bloc/bloc_coffee_counter/bloc_coffee_counter.dart';
import 'package:coffee_app/src/presentation/bloc/bloc_coffee_counter/event_coffee_counter.dart';
import 'package:coffee_app/src/presentation/themes/colors.dart';

class CoffeeMiniCard extends StatelessWidget {
  final Coffee coffee;

  const CoffeeMiniCard({
    super.key,
    required this.coffee,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoffeeCounterBloc, CoffeeCounterState>(
      builder: (context, state) {
        final count = state.coffeeCounts[coffee] ?? 0;

        if (count == 0) {
          return const SizedBox.shrink();
        }

        return Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(coffee.imageAsset),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coffee.name,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'with ${coffee.additive}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox(width: 8)),
                  OutlinedButton(
                    onPressed: () {
                      context
                          .read<CoffeeCounterBloc>()
                          .add(DecrementCounter(coffee));
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(32, 32),
                      shape: const CircleBorder(),
                      side: const BorderSide(
                        color: AppColors.borderlight,
                        width: 1,
                      ),
                    ),
                    child: const Icon(
                      Icons.remove,
                      color: AppColors.darkGray,
                      size: 16,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '$count',
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  const SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: () {
                      context
                          .read<CoffeeCounterBloc>()
                          .add(IncrementCounter(coffee));
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(32, 32),
                      shape: const CircleBorder(),
                      side: const BorderSide(
                        color: AppColors.borderlight,
                        width: 1,
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: AppColors.darkGray,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
