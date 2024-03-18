import 'package:flutter/material.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> basicInformationForm = GlobalKey<FormState>();
  GlobalKey<FormState> pinPutForm = GlobalKey<FormState>();
  GlobalKey<FormState> dniInformationForm = GlobalKey<FormState>();
  GlobalKey<FormState> userInformationForm = GlobalKey<FormState>();

// basicInformationForm
  String nameComplete = '';
  String lastNameComplete = '';
  String phone = '';

// pinPutForm
  String number = '';

// dniInformationForm
  String dni = '';

// userInformationForm
  String email = '';
  String password = '';

  bool isValirFormBasicInformationForm() {
    return basicInformationForm.currentState?.validate() ?? false;
  }

  bool isValirFormPinPutForm() {
    return pinPutForm.currentState?.validate() ?? false;
  }

  bool isValirFormDniInformationForm() {
    return dniInformationForm.currentState?.validate() ?? false;
  }

  bool isValirFormUserInformationForm() {
    return userInformationForm.currentState?.validate() ?? false;
  }
}
