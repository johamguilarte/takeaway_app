import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:takeaway_app/config/providers/providers.dart';
import 'package:takeaway_app/ui/widgets/widgets.dart';

class BasicInformationForm extends StatelessWidget {
  const BasicInformationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final key = Provider.of<RegisterFormProvider>(context);
    return Column(
      children: [
        const ImageSplash(
          title: 'Datos Basicos',
          subtitle: 'Es importante conocerte!',
        ),
        const SizedBox(height: 20),
        SizedBox(
          child: Form(
              key: key.basicInformationForm,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormCustom(
                    label: 'Nombre',
                    value: key.nameComplete,
                    hintText: null,
                    icon: null,
                    validator: (value) {
                      return value == 'Campo requerido' ? '' : null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormCustom(
                    label: 'Apellido',
                    value: key.lastNameComplete,
                    hintText: null,
                    icon: null,
                    validator: (value) {
                      return value == 'Campo requerido' ? '' : null;
                    },
                  ),
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
