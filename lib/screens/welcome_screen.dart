import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:my_design_one/welcome_screen_widgets/page_one.dart';
import 'package:my_design_one/welcome_screen_widgets/page_two.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: PageView(
            children: const [
              PageOne(),
              PageTwo(),
              /* RegisterScreen(), */
            ],
          ),
        ),
      ),
    );
  }
}
