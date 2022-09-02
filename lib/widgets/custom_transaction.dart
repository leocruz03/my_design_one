import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class CustomTransaction extends StatelessWidget {
  final String textTransaction;
  final String transactionType;
  final int transactionMoney;
  final Color colorTransaction;

  const CustomTransaction({
    Key? key,
    required this.textTransaction,
    required this.transactionType,
    required this.transactionMoney,
    required this.colorTransaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textTransaction,
                style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  // El transactionType solo pueden ser dos tipos: "Pagaste o Recibiste"
                  Text(
                    transactionType,
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    transactionMoney.toString(),
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            IconlyLight.swap,
            color: colorTransaction,
          ),
        ],
      ),
    );
  }
}
