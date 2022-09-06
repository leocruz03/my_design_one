import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_design_one/widgets/custom_input.dart';

class AddCostScreen extends StatelessWidget {
  const AddCostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Añade un gasto'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _AddCostTitle(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                          child: Form(
                            child: Column(
                              children: const [
                                CustomInput(
                                  hintText: 'Bogotá, Cúcuta',
                                  labelText: 'Ciudad',
                                  typeInput: TextInputType.text,
                                  obsqureText: false,
                                ),
                                SizedBox(height: 20),
                                CustomInput(
                                  hintText: 'Bogotá, Cúcuta',
                                  labelText: 'Ciudad',
                                  typeInput: TextInputType.text,
                                  obsqureText: false,
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AddCostTitle extends StatelessWidget {
  const _AddCostTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
        'Rellena todos los datos',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
