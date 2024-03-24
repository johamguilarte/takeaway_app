/*import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:takeaway_app/config/providers/providers.dart';
import 'package:takeaway_app/service/service.dart';
import 'package:takeaway_app/ui/widgets/widgets.dart';*/
/*
class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundWidgets(
            child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 250),
          CardContainerWidgets(
              child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                'Iniciar Sesión',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 30),
              _LoginForm()
            ],
          )),
          const SizedBox(height: 50),
          const Text(
            'No tengo una cuenta',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 50),
        ],
      ),
    )));
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginKey = Provider.of<LoginFormProvider>(context);
    return SizedBox(
      child: Form(
          key: loginKey.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                  autocorrect: false,
                  initialValue: 'soporte4@yopmail.com',
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) => loginKey.email = value,
                  validator: (value) {
                    String pattern =
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regExp = RegExp(pattern);
                    if (value == '') {
                      return 'Correo requerido.';
                    } else {
                      return regExp.hasMatch(value ?? '')
                          ? null
                          : 'El correo no es valido.';
                    }
                  },
                  decoration: _inputDecorationStyle(
                    'Correo Electronico',
                    'abc@example.com',
                    Icons.email_rounded,
                  )),
              const SizedBox(height: 20),
              TextFormField(
                  initialValue: "Soporte01",
                  autocorrect: false,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: _inputDecorationStyle(
                    'Contraseña',
                    '****',
                    Icons.key_sharp,
                  ),
                  onChanged: (value) => loginKey.password = value,
                  validator: (value) {
                    if (value == '') return 'Contraseña requerida.';
                    if (value != null && value.length >= 6) return null;
                    return 'La contraseña es muy corta.';
                  }),
              const SizedBox(height: 40),
              ElavatedButtonCustom(
                  width: double.infinity,
                  height: 45,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  text: "Entrar",
                  onPressed: () async {
                    if (!loginKey.isValidForm()) return;
                    AuthService.loginUri(loginKey.email, loginKey.password);

                    // await Auth2.passwordFlow(loginKey.email, loginKey.password).then((value) => {
                    //   print('result $value')
                    // });

                    // Navigator.pushReplacementNamed(context, Routes.home);
                  })
            ],
          )),
    );
  }

  InputDecoration _inputDecorationStyle(
      String labelText, String hintText, IconData? icon) {
    return InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: icon != null ? Icon(icon) : null);
  }
}
*/