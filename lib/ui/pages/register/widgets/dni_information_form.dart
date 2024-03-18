import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:takeaway_app/config/providers/providers.dart';
import 'package:takeaway_app/ui/widgets/widgets.dart';

class DniInformationForm extends StatelessWidget {
  const DniInformationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final key = Provider.of<RegisterFormProvider>(context);
    return Column(
      children: [
        const ImageSplash(
          title: 'Identidad',
          subtitle: 'Es por seguridad!',
        ),
        const SizedBox(height: 20),
        SizedBox(
          child: Form(
              key: key.dniInformationForm,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormCustom(
                    label: 'Cedula',
                    value: key.dni,
                    hintText: 'V1234567',
                    icon: FontAwesomeIcons.addressCard,
                    validator: (value) {
                      return value == 'Campo requerido' ? '' : null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 25),
                  ElavatedButtonCustom(
                      width: double.infinity,
                      height: 45,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      text: "Siguiente",
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
