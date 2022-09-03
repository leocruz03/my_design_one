import 'package:flutter/material.dart';
/* import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart'; */
/* import 'package:iconly/iconly.dart'; */
import 'package:provider/provider.dart';

import 'package:my_design_one/bodys/home_body.dart';
import 'package:my_design_one/bodys/settings_body.dart';
import 'package:my_design_one/bodys/transactions_body.dart';
import 'package:my_design_one/providers/body_provider.dart';

import 'package:my_design_one/widgets/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _HomePageBody(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener el selectedMenuOptBody
    final bodyProvider = Provider.of<BodyProvider>(context);

    // Cambiar para mostrar la pagina respectiva
    final currentIndex = bodyProvider.selectedMenuOptBody;

    switch (currentIndex) {
      case 0:
        return const HomeBody();

      case 1:
        return const TransactionsBody();

      case 2:
        return const SettingsBody();

      default:
        return const HomeBody();
    }
  }
}
