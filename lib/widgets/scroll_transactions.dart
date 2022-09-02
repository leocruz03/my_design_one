import 'package:flutter/material.dart';

import 'package:my_design_one/widgets/custom_transaction.dart';

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
                transactionMoney: 80000,
                colorTransaction: Colors.green,
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
