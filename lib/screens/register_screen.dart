import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_design_one/widgets/custom_button.dart';
import 'package:my_design_one/widgets/custom_input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                      child: Form(
                        child: Column(
                          children: [
                            const CustomInput(
                              /* hintText: 'Leonardo', */
                              labelText: 'First name',
                              obsqureText: false,
                            ),
                            const SizedBox(height: 20),
                            const CustomInput(
                              hintText: 'De la cruz',
                              labelText: 'Last name',
                              obsqureText: false,
                            ),
                            const SizedBox(height: 20),
                            const CustomInput(
                              hintText: 'example.email@myemail.com',
                              labelText: 'Email',
                              obsqureText: false,
                            ),
                            const SizedBox(height: 20),
                            const CustomInput(
                              hintText: '1234',
                              labelText: 'Create pin',
                              helperText: 'only 4 numbers',
                              obsqureText: true,
                            ),
                            const SizedBox(height: 30.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: ButtonInfinityCustom(
                                textButton: 'Registrarme',
                                onPressed: () => Navigator.pushNamed(
                                  context,
                                  'welcome_screen',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
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
