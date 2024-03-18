import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:takeaway_app/ui/widgets/image_splash.dart';

/// This is the basic usage of Pinput
/// For more examples check out the demo directory
class PinPutForm extends StatefulWidget {
  final formKey = GlobalKey<FormState>();
  final void Function(String)? onChanged;
  final void Function(String)? onCompleted;

  PinPutForm(
      {Key? key, required formKey, required this.onChanged, this.onCompleted})
      : super(key: key);

  @override
  State<PinPutForm> createState() => _PinPutFormState();
}

class _PinPutFormState extends State<PinPutForm> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  //

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Colors.black;
    const fillColor = Colors.white;
    const borderColor = Colors.black;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: borderColor),
      ),
    );

    /// Optionally you can use form to validate the Pinput
    return Form(
      key: widget.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ImageSplash(
            title: 'Verificación',
            subtitle: 'Revisa en tus mensajes!',
          ),
          const SizedBox(height: 10),
          Directionality(
            // Specify direction if desired
            textDirection: TextDirection.ltr,
            child: Pinput(
              controller: pinController,
              focusNode: focusNode,
              androidSmsAutofillMethod:
                  AndroidSmsAutofillMethod.smsUserConsentApi,
              listenForMultipleSmsOnAndroid: true,
              defaultPinTheme: defaultPinTheme,
              separatorBuilder: (index) => const SizedBox(width: 8),
              validator: (value) {
                return value == '2222' ? null : 'Clave incorrecta';
              },
              hapticFeedbackType: HapticFeedbackType.heavyImpact,
              onCompleted: widget.onCompleted,
              onChanged: widget.onChanged,
              cursor: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    width: 22,
                    height: 1,
                    color: focusedBorderColor,
                  ),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: focusedBorderColor),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: fillColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: focusedBorderColor),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: Colors.redAccent),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
