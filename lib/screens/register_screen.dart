import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_design_one/providers/register_form_provider.dart';

import 'package:my_design_one/widgets/custom_button.dart';
import 'package:my_design_one/widgets/custom_input.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    Key? key,
  }) : super(key: key);

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
                    const _RegisterCenterText(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 30,
                          ),
                          child: ChangeNotifierProvider(
                            create: (_) => RegisterFormProvider(),
                            child: const _FormRegister(),
                          ),
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

class _FormRegister extends StatelessWidget {
  const _FormRegister({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registerForm = Provider.of<RegisterFormProvider>(context);

    return Form(
      key: registerForm.formRegisterKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          CustomInput(
            hintText: 'Leonardo',
            labelText: 'First name',
            obsqureText: false,
            typeInput: TextInputType.text,
            onChanged: (value) => registerForm.name = value,
          ),
          const SizedBox(height: 20),
          CustomInput(
            hintText: 'De la cruz',
            labelText: 'Last name',
            obsqureText: false,
            typeInput: TextInputType.text,
            onChanged: (value) => registerForm.lastName = value,
          ),
          const SizedBox(height: 20),
          CustomInput(
            hintText: 'example.email@myemail.com',
            labelText: 'Email',
            obsqureText: false,
            typeInput: TextInputType.emailAddress,
            validator: (value) {
              String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp = RegExp(pattern);

              return regExp.hasMatch(value ?? '')
                  ? null
                  : 'No luce como un correo';
            },
            onChanged: (value) => registerForm.email = value,
          ),
          const SizedBox(height: 20),
          CustomInput(
            hintText: '1234',
            labelText: 'Create pin',
            helperText: 'only 4 numbers',
            obsqureText: true,
            typeInput: TextInputType.number,
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
            onChanged: (value) => registerForm.pin = value,
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: ButtonInfinityCustom(
              textButton: 'Registrarme',
              bgButton: Colors.black,
              onPressed: () {
                if (!registerForm.isValidForm()) {
                  return;
                } else {
                  Navigator.pushReplacementNamed(context, 'home_screen');
                }
              },
            ),
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: ButtonInfinityCustom(
              textButton: '¿Tienes cuenta? entra aquí',
              bgButton: Colors.black,
              onPressed: () => Navigator.pushNamed(
                context,
                'login_screen',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _RegisterCenterText extends StatelessWidget {
  const _RegisterCenterText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            '¿Eres nuevo?',
            style: GoogleFonts.raleway(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            'Registrate',
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
