import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formLoginKey = GlobalKey<FormState>();

  String email = '';
  String pin = '';

  bool isValidForm() {
    return formLoginKey.currentState?.validate() ?? false;
  }
}
