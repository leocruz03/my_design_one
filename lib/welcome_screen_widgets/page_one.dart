import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const WelcomeTitle(),
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: const Image(
                image: AssetImage('assets/png/png_one.png'),
                width: 350,
              ),
            ),
            Expanded(child: Container()),
            const MainInfo(),
          ],
        )
      ],
    );
  }
}

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Costos APL',
          style: GoogleFonts.raleway(
            textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }
}

class MainInfo extends StatelessWidget {
  const MainInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Bienvenid@',
          style: GoogleFonts.raleway(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'App para controlar los costos en viajes',
          style: GoogleFonts.raleway(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const RowNextInd(),
      ],
    );
  }
}

class RowNextInd extends StatelessWidget {
  const RowNextInd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Desliza a la derecha',
            style: GoogleFonts.raleway(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Icon(Ionicons.arrow_forward_outline),
        ],
      ),
    );
  }
}
