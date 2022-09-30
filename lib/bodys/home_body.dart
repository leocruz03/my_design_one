import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: const _UserBodyHome(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total de costos',
                        style: GoogleFonts.raleway(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          _CityName(
                            cityName: 'Bogotá',
                          ),
                          _TotalPrice(
                            totalCost: 300000,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CityName extends StatelessWidget {
  final String cityName;

  const _CityName({
    Key? key,
    required this.cityName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      cityName,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w800,
        color: Colors.black,
      ),
    );
  }
}

class _TotalPrice extends StatelessWidget {
  final int totalCost;

  const _TotalPrice({
    Key? key,
    required this.totalCost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$ $totalCost COP'.toString(),
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w800,
        color: Colors.green.shade700,
      ),
    );
  }
}

class _UserBodyHome extends StatelessWidget {
  const _UserBodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Bienvenid@',
          style: GoogleFonts.raleway(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
