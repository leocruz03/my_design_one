import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

import 'package:my_design_one/widgets/bottom_navbar.dart';
import 'package:my_design_one/widgets/custom_transaction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FadeInLeft(
          child: Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Stack(
              children: [
                Column(
                  children: [
                    Text(
                      'Hi, first_name',
                      style: GoogleFonts.raleway(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Expanded(
                      child: ScrollTransactions(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FadeInUp(
          child: const BottomNavBar(),
        ),
      ),
    );
  }
}

class ScrollTransactions extends StatelessWidget {
  const ScrollTransactions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: const [
              CustomTransaction(
                textTransaction: 'Netflix',
                transactionType: 'Pagaste: ',
                transactionMoney: 10000,
                colorTransaction: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTransaction(
                textTransaction: 'Netflix',
                transactionType: 'Recibiste: ',
                transactionMoney: 10000,
                colorTransaction: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTransaction(
                textTransaction: 'Netflix',
                transactionType: 'Pagaste: ',
                transactionMoney: 10000,
                colorTransaction: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTransaction(
                textTransaction: 'Netflix',
                transactionType: 'Pagaste: ',
                transactionMoney: 10000,
                colorTransaction: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTransaction(
                textTransaction: 'Netflix',
                transactionType: 'Pagaste: ',
                transactionMoney: 10000,
                colorTransaction: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
