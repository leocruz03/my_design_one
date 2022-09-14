import 'package:flutter/material.dart';
/* import 'package:google_fonts/google_fonts.dart'; */

class CustomInput extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextInputType? typeInput;
  final bool obsqureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const CustomInput({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.typeInput,
    required this.obsqureText,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: typeInput,
      obscureText: obsqureText,
      validator: validator,
      onChanged: onChanged,
      style: const TextStyle(
        color: Color(0xff354259),
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          // Este warning es porque es color hexadecimal que tiene dos números más correspondientes a la opacidad
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
