import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_design_one/widgets/custom_button.dart';
import 'package:my_design_one/widgets/custom_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FadeInLeft(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Stack(
              children: [
                Column(
                  children: [
                    _LoginCenterText(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                          child: Form(
                            child: Column(
                              children: [
                                CustomInput(
                                  hintText: 'myemail.example@correo.com',
                                  labelText: 'Email',
                                  obsqureText: false,
                                  typeInput: TextInputType.emailAddress,
                                  validator: (value) => 'hola',
                                ),
                                const SizedBox(height: 20),
                                CustomInput(
                                  hintText: '1234',
                                  labelText: 'Your pin',
                                  obsqureText: false,
                                  typeInput: TextInputType.number,
                                  validator: (value) => 'hola',
                                ),
                                const SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: ButtonInfinityCustom(
                                    textButton: 'Entrar',
                                    bgButton: Colors.black,
                                    onPressed: () => Navigator.pushNamed(
                                      context,
                                      'home_screen',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
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

class _LoginCenterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Bienvenido',
            style: GoogleFonts.raleway(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            'Ingresa tu cuenta',
            style: GoogleFonts.raleway(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
