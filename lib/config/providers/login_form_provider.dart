import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String email = 'soporte4@yopmail.com';
  String password = 'Soporte01';

  init() async {}

  bool isValidForm() {
    print('$email - $password');
    return formKey.currentState?.validate() ?? false;
  }
}
