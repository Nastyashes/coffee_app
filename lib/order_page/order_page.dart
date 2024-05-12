import 'package:coffee_app/order_page/tab_deliver.dart';
import 'package:coffee_app/order_page/tab_pickup.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

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
            title: const Padding(
                padding: EdgeInsets.only(right: 40),
                child: Center(
                    child: Text('Order',
                        style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(47, 45, 44, 1)))))),
        body: Column(
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color.fromRGBO(242, 242, 242, 1),
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
                      labelStyle: const TextStyle(
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      unselectedLabelColor: const Color.fromRGBO(47, 45, 44, 1),
                      unselectedLabelStyle:
                          const TextStyle(fontWeight: FontWeight.w400),
                      indicatorSize: TabBarIndicatorSize.label,
                      controller: _tabController,
                      labelPadding: EdgeInsets.zero,
                      dividerColor: Colors.white,
                      indicatorColor: Colors.white,
                      indicator: BoxDecoration(
                        color: const Color.fromRGBO(198, 124, 78, 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ))),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Deliver(),
                  PickUp(),
                ],
              ),
            ),
          ],
        ));
  }
}
