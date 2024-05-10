

import 'package:coffee_app/detail_page/detail.dart';
import 'package:coffee_app/like_star.dart';
import 'package:coffee_app/сhoice.dart';
import 'package:coffee_app/delivery_page/delivery.dart';
import 'package:coffee_app/home_page/home.dart';
import 'package:coffee_app/order_page/order_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (context) => const Home(),
  '/choice': (context) => const Choice(),
  '/order': (context) => const OrderPage(),
  '/delivery': (context) => const Delivery(),
  '/detail':(context) => Detail(),
  '/like':(context) => const LikeStar(),
};