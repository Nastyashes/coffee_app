

import 'package:coffee_app/detail_page/detail.dart';
import 'package:coffee_app/home_page/naw_bar/few_page.dart';
import 'package:coffee_app/delivery_page/delivery.dart';
import 'package:coffee_app/home_page/home.dart';
import 'package:coffee_app/order_page/order_page.dart';
import 'package:flutter/material.dart';
import 'home_page/naw_bar/notification.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (context) => const Home(),
  '/few': (context) => const Few(),
  '/order': (context) => const OrderPage(),
  '/delivery': (context) => const Delivery(),
  '/detail':(context) => const Detail(),
  '/notification':(context) => const NotificationPage(),
};