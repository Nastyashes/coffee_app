import 'package:coffee_app/home_page/naw_bar/few_page/few_page.dart';
import 'package:coffee_app/delivery_page/delivery.dart';
import 'package:coffee_app/home_page/home.dart';
import 'package:coffee_app/home_page/naw_bar/request.dart';
import 'package:flutter/material.dart';
import 'home_page/naw_bar/notification.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (context) => const Home(),
  '/few': (context) => const Few(),
  '/delivery': (context) => const Delivery(),
  '/notification': (context) => const NotificationPage(),
  '/request': (context) => const RequestPage(),
};
