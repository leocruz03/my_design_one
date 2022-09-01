import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final bool obsqureText;

  const CustomInput({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    required this.obsqureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsqureText,
      style: const TextStyle(
        color: Color(0xff354259),
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          // Este warning es por que es color hexadecimal que tiene dos números más correspondientes a la opacidad
          color: Color(0xff35425960),
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.grey.shade600,
        ),
        helperText: helperText,
        border: InputBorder.none,
      ),
    );
  }
}
