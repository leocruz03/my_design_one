import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ButtonInfinityCustom extends StatelessWidget {
  final void Function() onPressed;
  final String textButton;

  const ButtonInfinityCustom({
    Key? key,
    required this.textButton,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        textStyle: GoogleFonts.raleway(
          fontSize: 14,
          fontWeight: FontWeight.w800,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Text(textButton),
        ),
      ),
    );
  }
}
