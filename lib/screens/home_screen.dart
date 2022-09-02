import 'package:flutter/material.dart';

import 'package:my_design_one/widgets/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(10.0),
        child: BottomNavBar(),
      ),
    );
  }
}
