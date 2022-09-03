import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:my_design_one/providers/body_provider.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bodyProvider = Provider.of<BodyProvider>(context);

    final currentIndex = bodyProvider.selectedMenuOptBody;

    return BottomNavigationBar(
      onTap: (int i) => bodyProvider.selectedMenuOptBody = i,
      currentIndex: currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            IconlyLight.home,
            size: 30,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            IconlyLight.swap,
            size: 30,
          ),
          label: 'Transactions',
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
