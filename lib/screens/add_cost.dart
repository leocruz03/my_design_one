import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AddCostScreen extends StatelessWidget {
  const AddCostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: FadeInDown(
          child: const Center(
            child: Text('Hola Mundo'),
          ),
        ),
      ),
    );
  }
}
