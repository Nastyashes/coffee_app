
import 'package:coffee_app/src/presentation/screens/delivery_page/delivery.dart';
import 'package:coffee_app/src/presentation/screens/home_page/home.dart';
import 'package:coffee_app/src/presentation/screens/few_page/few_page.dart';
import 'package:coffee_app/src/presentation/screens/order_page/order_page.dart';
import 'package:coffee_app/src/presentation/screens/start_page/start_page.dart';
import 'package:coffee_app/src/users/users.dart';
import 'package:flutter/material.dart';
import '../presentation/screens/notification_page/notification.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/few':
      return MaterialPageRoute(builder: (context) => const Few());
    case '/start':
      return MaterialPageRoute(builder: (context) => const CoffeeStartPage());
    case '/home':
      return MaterialPageRoute(builder: (context) => Home(user: user));
    case '/delivery':
      return MaterialPageRoute(builder: (context) => const Delivery());
    case '/notification':
      return MaterialPageRoute(builder: (context) => const NotificationPage());
    case '/order':
      return MaterialPageRoute(builder: (context) => OrderPage( user: user));
     
    default:
      return MaterialPageRoute(builder: (context) => Home( user: user,));
  }
}
