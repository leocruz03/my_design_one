import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_design_one/widgets/custom_button.dart';
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
                  children: const [
                    _AddCostTitle(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                          child: _FormAddCost(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _FormAddCost extends StatelessWidget {
  const _FormAddCost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomInput(
            hintText: 'Bogotá, Cúcuta...',
            labelText: 'Ciudad',
            typeInput: TextInputType.text,
            obsqureText: false,
          ),
          const SizedBox(height: 20),
          const CustomInput(
            hintText: 'Taxi, Almuerzo...',
            labelText: 'Qué pagó',
            typeInput: TextInputType.text,
            obsqureText: false,
          ),
          const SizedBox(height: 20),
          const CustomInput(
            hintText: '\$30.500',
            labelText: 'Costo',
            typeInput: TextInputType.text,
            obsqureText: false,
          ),
          const SizedBox(height: 20),
          const CustomInput(
            hintText: 'Cédula',
            labelText: 'Cédula',
            typeInput: TextInputType.text,
            obsqureText: false,
          ),
          const SizedBox(height: 20),
          ButtonInfinityCustom(
            textButton: 'Enviar',
            onPressed: () {},
            bgButton: Colors.black,
          ),
          const SizedBox(height: 20),
          ButtonInfinityCustom(
            textButton: 'Cancelar',
            onPressed: () => Navigator.pop(context, 'home_screen'),
            bgButton: Colors.red,
          ),
        ],
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
