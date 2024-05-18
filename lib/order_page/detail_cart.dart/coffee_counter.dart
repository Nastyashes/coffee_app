import 'package:coffee_app/order_page/detail_cart.dart/bloc_coffee_counter/event_coffee_counter.dart';
import 'package:coffee_app/order_page/detail_cart.dart/bloc_coffee_counter/state_coffee_counter.dart';
import 'package:coffee_app/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_coffee_counter/bloc_coffee_counter.dart';

class CoffeeCount extends StatelessWidget {
  const CoffeeCount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CoffeeCounterBloc(),
      child: const CoffeeCountView(),
    );
  }
}

class CoffeeCountView extends StatelessWidget {
  const CoffeeCountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoffeeCounterBloc, CoffeeCounterState>(
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {
                context.read<CoffeeCounterBloc>().add(DecrementCounter());
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                fixedSize: const Size.fromRadius(16),
                shape: const CircleBorder(),
                side: const BorderSide(
                  color: AppColors.borderlight,
                  width: 1,
                ),
              ),
              child: const Icon(
                Icons.remove,
                color: AppColors.darkGray,
                size: 14,
              ),
            ),
            Container(
              padding: EdgeInsets.zero,
              child: Text(
                '${state.counter}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                context.read<CoffeeCounterBloc>().add(IncrementCounter());
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                fixedSize: const Size.fromRadius(16),
                shape: const CircleBorder(),
                side: const BorderSide(
                  color: AppColors.borderlight,
                  width: 1,
                ),
              ),
              child: const Icon(
                Icons.add,
                color: AppColors.darkGray,
                size: 14,
              ),
            ),
          ],
        );
      },
    );
  }
}
