import 'package:coffee_app/coffees/coffee_bloc.dart';
import 'package:coffee_app/coffees/coffee_parameters.dart';
import 'package:coffee_app/home_page/tabbar_coffee/tab.dart';
import 'package:coffee_app/themes/colors.dart';
import 'package:coffee_app/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'naw_bar/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}


class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
     _tabController = TabController(length: CoffeeType.values.length, vsync: this);
  }



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoffeeBloc(),
      child: Scaffold(
      bottomNavigationBar: const NavigationPage(),
      body:  
      Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.darkgrad1,
                  AppColors.darkgrad2,
                ],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
          ),
          Align(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                        top: 63, bottom: 28, left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: 40,
                          child: TextField(
                            style: AppFonts.body1,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 10),
                              label: Text('Location',
                                  style: AppFonts.body2.lightGrey1),
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/image/user.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: 52,
                      decoration: BoxDecoration(
                          color: AppColors.darkgrad2,
                          borderRadius: BorderRadius.circular(16)),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10),
                          label: Text('Search coffee',
                              style: AppFonts.body2.lightGrey1),
                          border: InputBorder.none,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          prefixIcon: const ImageIcon(
                            AssetImage('assets/icons/search.png'),
                            color: AppColors.white,
                          ),
                          suffixIcon: IconButton(
                            icon: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColors.peru),
                                child: const ImageIcon(
                                  AssetImage('assets/icons/setting.png'),
                                  color: AppColors.white,
                                  size: 20,
                                )),
                            onPressed: () {},
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                    )),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 10),
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          image: AssetImage('assets/image/promo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.tomato,
                            ),
                            child: Text('Promo', style: AppFonts.title4.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Buy one get \n one FREE',
                            style: AppFonts.header2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                TabBar(
                  tabs: CoffeeType.values
                      .map(
                        (e) => Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              e.name.capitalize(),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  labelStyle: AppFonts.title4.white,
                  unselectedLabelColor: AppColors.darkSalateGray,
                  unselectedLabelStyle: AppFonts.body2,
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: _tabController,
                  isScrollable: true,
                  labelPadding: EdgeInsets.zero,
                  dividerColor: Colors.white,
                  indicatorColor: Colors.white,
                  indicator: BoxDecoration(
                    color: AppColors.peru,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                      controller: _tabController,
                      children: CoffeeType.values
                          .map((e) => CoffeeTab(type: e))
                          .toList()),
                ),
              ]),
          ),
        ])
        ));
      }
  }


extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
