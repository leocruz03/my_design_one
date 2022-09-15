import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_design_one/widgets/custom_button.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const RowUserSettings(),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Column(
                            children: const [
                              Text(
                                'Configuraciones',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              ButtonInfinityCustom(
                                textButton: 'Iniciar sesión con otra cuenta',
                                onPressed: () {},
                                bgButton: Colors.grey.shade600,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ButtonInfinityCustom(
                                textButton: 'Cerrar sesión',
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                    context,
                                    'welcome_screen',
                                  );
                                },
                                bgButton: Colors.red.shade600,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowUserSettings extends StatelessWidget {
  const RowUserSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Username worker',
          style: GoogleFonts.raleway(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        /* const CircleAvatar(
          backgroundColor: Colors.black,
        ), */
      ],
    );
  }
}
