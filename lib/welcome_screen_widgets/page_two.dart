import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_design_one/widgets/custom_button.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const TextFeaturesCenter(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Las caracteristicas y servicios que ofrecemos son:',
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const CustomTextFeatures(
                        featureText: 'First feature ....',
                      ),
                      const SizedBox(height: 10),
                      const CustomTextFeatures(
                        featureText: 'First feature ....',
                      ),
                      const SizedBox(height: 10),
                      const CustomTextFeatures(
                        featureText: 'First feature ....',
                      ),
                      const SizedBox(height: 10),
                      const CustomTextFeatures(
                        featureText: 'First feature ....',
                      ),
                      const SizedBox(height: 10),
                      const CustomTextFeatures(
                        featureText: 'First feature ....',
                      ),
                      const SizedBox(height: 10),
                      const CustomTextFeatures(
                        featureText: 'First feature ....',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ButtonInfinityCustom(
                textButton: 'Continuar',
                onPressed: () => Navigator.pushNamed(
                  context,
                  'register_screen',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TextFeaturesCenter extends StatelessWidget {
  const TextFeaturesCenter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Caracteristicas',
            style: GoogleFonts.raleway(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class CustomTextFeatures extends StatelessWidget {
  final String featureText;

  const CustomTextFeatures({
    super.key,
    required this.featureText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          featureText,
          style: GoogleFonts.raleway(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
