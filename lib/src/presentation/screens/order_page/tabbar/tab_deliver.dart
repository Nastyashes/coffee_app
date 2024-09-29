import 'package:coffee_app/src/entities/coffee_items.dart';
import 'package:coffee_app/src/entities/deliver_cost.dart';
import 'package:coffee_app/src/presentation/screens/order_page/add_notes_address.dart';
import 'package:coffee_app/src/presentation/screens/order_page/coffee_mini_card.dart';
import 'package:coffee_app/src/presentation/themes/button_theme.dart';
import 'package:coffee_app/src/presentation/themes/colors.dart';
import 'package:coffee_app/src/presentation/themes/fonts.dart';
import 'package:coffee_app/src/entities/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coffee_app/src/presentation/bloc/bloc_coffee_counter/bloc_coffee_counter.dart';
import 'package:coffee_app/src/presentation/bloc/bloc_coffee_counter/state_coffee_counter.dart';

class Deliver extends StatelessWidget {
  final Users user;
  final DeliverCost deliverCost = DeliverCost(2, 1);

  Deliver({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        AddressPage(
          user: user,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Divider(
            color: AppColors.dividerlight,
            thickness: 1,
            indent: 30,
            endIndent: 30,
          ),
        ),
        BlocBuilder<CoffeeCounterBloc, CoffeeCounterState>(
          builder: (context, state) {
            if (state.coffeeCounts.isEmpty) {
              return const Center(child: Text('No coffee selected'));
            }

            return Column(
              children: state.coffeeCounts.keys.map((coffee) {
                return CoffeeMiniCard(coffee: coffee);
              }).toList(),
            );
          },
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Divider(
            color: AppColors.dividerlight,
            thickness: 4,
            indent: 0,
            endIndent: 0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              side: const WidgetStatePropertyAll(
                BorderSide(color: AppColors.borderlight),
              ),
            ),
            child: SizedBox(
              height: 56,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ImageIcon(
                    AssetImage('assets/icons/discount.png'),
                    size: 24,
                    color: AppColors.peru,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      '1 Discount is applied',
                      style: AppFonts.title4.darkGrey,
                    ),
                  ),
                  Expanded(
                    child: Container(width: 20),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.darkGray,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Payment Summary', style: AppFonts.title3.darkGrey),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Price', style: AppFonts.body2.darkGrey),
              BlocBuilder<CoffeeCounterBloc, CoffeeCounterState>(
                builder: (context, state) {
                  double totalPrice = calculateTotalPrice(state.coffeeCounts);
                  return Text('\$ ${totalPrice.toStringAsFixed(2)}',
                      style: AppFonts.title4.darkGrey);
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Delivery Fee', style: AppFonts.body2.darkGrey),
              const Expanded(child: SizedBox()),
              Text(
                '\$ ${deliverCost.normalDeliver}',
                style: AppFonts.title4.darkGrey.copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Text('\$ ${deliverCost.freeDeliver}', style: AppFonts.title4.darkGrey),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 1),
          child: Divider(
            color: AppColors.borderlight,
            thickness: 1,
            indent: 30,
            endIndent: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total Payment', style: AppFonts.body2.darkGrey),
              BlocBuilder<CoffeeCounterBloc, CoffeeCounterState>(
                  builder: (context, state) {
                double totalPrice = calculateTotalPrice(state.coffeeCounts);
                double deliverPrise = totalPrice + deliverCost.freeDeliver;
                return Text('\$ ${deliverPrise.toStringAsFixed(2)}',
                    style: AppFonts.title4.darkGrey);
              })
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    const ImageIcon(
                      AssetImage('assets/icons/moneys.png'),
                      size: 24,
                      color: AppColors.peru,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.peru,
                        ),
                        height: 24,
                        width: 54,
                        alignment: Alignment.center,
                        child: Text(
                          'Cash',
                          style: AppFonts.body1.white,
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.borderlight,
                        ),
                        height: 24,
                        alignment: Alignment.center,
                        child:
                            BlocBuilder<CoffeeCounterBloc, CoffeeCounterState>(
                                builder: (context, state) {
                          double totalPrice =
                              calculateTotalPrice(state.coffeeCounts);
                          double deliverPrise =
                              totalPrice + deliverCost.freeDeliver;
                          return Text('\$ ${deliverPrise.toStringAsFixed(2)}',
                              style: AppFonts.body1.darkGrey);
                        })),
                    Expanded(
                      child: Container(width: 24),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage('assets/icons/vector.png'),
                        size: 24,
                        color: AppColors.gray1,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 62,
                      child: ElevatedButton(
                        style: headButtonStyle,
                        onPressed: () {
                          Navigator.pushNamed(context, '/delivery');
                        },
                        child: const Text('Order'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
