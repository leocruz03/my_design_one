import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_design_one/widgets/custom_input.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const RegisterCenterText(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 30,
                  ),
                  child: Form(
                    child: Column(
                      children: const [
                        CustomInput(
                          hintText: 'Leonardo',
                          labelText: 'First name',
                          obsqureText: false,
                        ),
                        SizedBox(height: 20),
                        CustomInput(
                          hintText: 'De la cruz',
                          labelText: 'Last name',
                          obsqureText: false,
                        ),
                        SizedBox(height: 20),
                        CustomInput(
                          hintText: 'example.email@mymail.com',
                          labelText: 'Email',
                          obsqureText: false,
                        ),
                        SizedBox(height: 20),
                        CustomInput(
                          hintText: '1234',
                          labelText: 'Create pin',
                          helperText: 'only 4 numbers',
                          obsqureText: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class RegisterCenterText extends StatelessWidget {
  const RegisterCenterText({
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
