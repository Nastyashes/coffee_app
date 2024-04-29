import 'package:coffee_app/delivery.dart';
import 'package:coffee_app/home.dart';
import 'package:coffee_app/order_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import 'Choice.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget{
  const NavigationPage ();


  @override
    State<NavigationPage> createState() => NavigationPageState(); 
}

class NavigationPageState extends State<NavigationPage> {
  int currentPageIndex = 0; 
  List<Widget> pages = const[
    Home(),
    Choice(),
    OrderPage(),
    Delivery()
  ];
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      

       bottomNavigationBar: BottomNavigationBar(
         currentIndex: currentPageIndex, 
         selectedItemColor: Color.fromRGBO(198, 124, 78, 1),
         unselectedItemColor: Color.fromRGBO(141, 141, 141, 1),
         iconSize: 24,
        onTap: (index) {setState(() {
          currentPageIndex=index;
        });},
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.heart_broken)),
          BottomNavigationBarItem(icon: Icon(Icons.shop)),
          BottomNavigationBarItem(icon: Icon(Icons.notification_add_outlined)),
        ],
        
      ),
      
      body: pages[currentPageIndex],
      );}}