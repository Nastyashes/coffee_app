
import 'package:coffee_app/themes/colors.dart';
import 'package:flutter/material.dart';



class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => NavigationPageState();
}

class NavigationPageState extends State<NavigationPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: currentPageIndex,
      onTap: (int index) {
        setState(() {
          currentPageIndex = index;
        });
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/home');
            break;
          case 1:
            Navigator.pushNamed(context, '/few');
            break;
          case 2:
            Navigator.pushNamed(context, '/request');
            break;
          case 3:
            Navigator.pushNamed(context, '/notification');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/icons/home.png')),
          label: '-',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/icons/few.png')),
          label: '-',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/icons/order.png')),
          label: '-',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/icons/notification.png')),
          label: '-',
        ),
      ],
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.peru,
      unselectedItemColor: AppColors.lightgray3,
    );
  }
}