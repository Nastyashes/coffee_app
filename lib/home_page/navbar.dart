
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
            Navigator.pushNamed(context, '/choice');
            break;
          case 2:
            Navigator.pushNamed(context, '/order');
            break;
          case 3:
            Navigator.pushNamed(context, '/delivery');
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
      backgroundColor: Colors.white,
      selectedItemColor: const Color.fromRGBO(198, 124, 78, 1),
      unselectedItemColor: const Color.fromRGBO(141, 141, 141, 1),
    );
  }
}