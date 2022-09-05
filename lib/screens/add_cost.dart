import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
        body: const SafeArea(
          child: Center(
            child: Text('Hola Mundo'),
          ),
        ),
      ),
    );
  }
}
