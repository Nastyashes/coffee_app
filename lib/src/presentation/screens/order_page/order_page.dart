import 'package:coffee_app/src/presentation/coffees_bloc/coffee_bloc.dart';
import 'package:coffee_app/src/presentation/coffees_bloc/coffee_event.dart';
import 'package:coffee_app/src/presentation/coffees_bloc/coffee_state.dart';
import 'package:coffee_app/src/presentation/screens/order_page/tab_deliver.dart';
import 'package:coffee_app/src/presentation/screens/order_page/tab_pickup.dart';
import 'package:coffee_app/src/presentation/themes/colors.dart';
import 'package:coffee_app/src/presentation/themes/fonts.dart';
import 'package:coffee_app/src/entities/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderPage extends StatefulWidget {
  final Users user;

  const OrderPage({super.key, required this.user});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    context
        .read<CoffeeBloc>()
        .add(LoadCoffee()); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Center(
            child: Text('Order', style: AppFonts.title2.darkGrey),
          ),
        ),
      ),
      body: BlocBuilder<CoffeeBloc, CoffeeState>(
        builder: (context, state) {
          if (state is CoffeeLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CoffeeLoaded) {
            return Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColors.borderlight,
                    ),
                    child: TabBar(
                      tabs: [
                        Tab(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: const Center(
                              child: Text('Deliver'),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: const Center(child: Text('Pick Up')),
                          ),
                        ),
                      ],
                      labelStyle: AppFonts.title3.white,
                      unselectedLabelColor: AppColors.darkGray,
                      unselectedLabelStyle: AppFonts.body3medium,
                      indicatorSize: TabBarIndicatorSize.label,
                      controller: _tabController,
                      labelPadding: EdgeInsets.zero,
                      dividerColor: AppColors.white,
                      indicatorColor: AppColors.white,
                      indicator: BoxDecoration(
                        color: AppColors.peru,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Deliver(
                        user: widget.user,
                      ),
                      const PickUp(),
                    ],
                  ),
                ),
              ],
            );
          } else if (state is CoffeeError) {
            return Center(child: Text(state.message));
          } else {
            return const Center(child: Text('Unknown state'));
          }
        },
      ),
    );
  }
}
