import 'package:flutter/material.dart';

class RegisterFormProvider extends ChangeNotifier {
  // Permite jugar con los key
  GlobalKey<FormState> formRegisterKey = GlobalKey<FormState>();

  String name = '';
  String lastName = '';
  String email = '';
  String pin = '';

  bool isValidForm() {
    print(formRegisterKey.currentState?.validate());

    print('$name - $lastName - $email - $pin');
    return formRegisterKey.currentState?.validate() ?? false;
  }
}
