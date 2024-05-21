import 'package:coffee_app/coffees/coffee_parameters.dart';
import 'package:coffee_app/order_page/tab_deliver.dart';
import 'package:coffee_app/order_page/tab_pickup.dart';
import 'package:coffee_app/themes/colors.dart';
import 'package:coffee_app/themes/fonts.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  final Coffee coffee;

  const OrderPage({super.key, required this.coffee});

  @override
  State<OrderPage> createState() => OrderPageState();
}

class OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Center(
                    child: Text('Order', style: AppFonts.title2.darkGrey)))),
        body: Column(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: const Center(child: Text('Pick Up'))),
                        )
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
                    ))),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Deliver(coffee: widget.coffee,),
                  const PickUp(),
                ],
              ),
            ),
          ],
        ));
  }
}
