import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_design_one/providers/login_form_provider.dart';
import 'package:my_design_one/widgets/custom_button.dart';
import 'package:my_design_one/widgets/custom_input.dart';
import 'package:provider/provider.dart';

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
                          child: ChangeNotifierProvider(
                            create: (_) => LoginFormProvider(),
                            child: const _FormLogin(),
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

class _FormLogin extends StatelessWidget {
  const _FormLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);

    return Form(
      key: loginForm.formLoginKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          CustomInput(
            hintText: 'myemail.example@correo.com',
            labelText: 'Email',
            obsqureText: false,
            typeInput: TextInputType.emailAddress,
            onChanged: (value) => loginForm.email = value,
            validator: (value) {
              String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp = RegExp(pattern);

              return regExp.hasMatch(value ?? '')
                  ? null
                  : 'No luce como un correo';
            },
          ),
          const SizedBox(height: 20),
          CustomInput(
            hintText: '1234',
            labelText: 'Your pin',
            obsqureText: true,
            typeInput: TextInputType.number,
            onChanged: (value) => loginForm.pin = value,
            validator: (value) {
              if (value == null) {
                return 'Este campo es requerido';
              } else if (value.length < 4) {
                return 'Se necesitan 4 números';
              } else if (value.length > 4) {
                return 'Deben ser 4 numeros';
              }
              return null;
            },
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: ButtonInfinityCustom(
                textButton: 'Entrar',
                bgButton: Colors.black,
                onPressed: () {
                  if (!loginForm.isValidForm()) {
                    return;
                  } else {
                    Navigator.pushReplacementNamed(context, 'home_screen');
                  }
                }),
          )
        ],
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
