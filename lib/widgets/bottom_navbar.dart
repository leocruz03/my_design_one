import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            IconlyLight.swap,
            size: 30,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            IconlyLight.setting,
            size: 30,
          ),
          label: 'Settings',
        ),
      ],
      selectedItemColor: const Color(0xffeb4747),
      unselectedItemColor: Colors.white,
      backgroundColor: Colors.black,
    );
  }
}
