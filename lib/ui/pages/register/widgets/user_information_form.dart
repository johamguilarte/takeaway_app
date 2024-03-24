import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:takeaway_app/config/providers/providers.dart';
import 'package:takeaway_app/ui/widgets/widgets.dart';

class UserInformationForm extends StatelessWidget {
  final PageController controller;
  const UserInformationForm({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final key = Provider.of<RegisterFormProvider>(context);
    return Column(
      children: [
        const ImageSplash(
          title: 'Datos de Acceso',
          subtitle: 'No lo compartas!',
        ),
        const SizedBox(height: 20),
        SizedBox(
          child: Form(
              key: key.userInformationForm,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormCustom(
                    label: 'Email',
                    value: key.email,
                    hintText: 'abc@example.com',
                    icon: FontAwesomeIcons.envelope,
                    validator: (value) {
                      return value == 'Campo requerido' ? '' : null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormCustom(
                    label: 'Contraseña',
                    value: key.password,
                    hintText: '****',
                    icon: FontAwesomeIcons.lock,
                    validator: (value) {
                      return value == 'Campo requerido' ? '' : null;
                    },
                  ),
                  const SizedBox(height: 25),
                  ElavatedButtonCustom(
                      width: double.infinity,
                      height: 45,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      text: "Empecemos",
                      onPressed: () async {
                        print('here bro');
                      })
                ],
              )),
        ),
      ],
    );
  }
}
