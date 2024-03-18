import 'package:flutter/material.dart';

class TextFormCustom extends StatelessWidget {
  const TextFormCustom(
      {Key? key,
      this.value,
      required this.label,
      this.icon,
      this.hintText,
      this.validator})
      : super(key: key);

  final dynamic value;
  final String label;
  final IconData? icon;
  final String? hintText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.text,
        onChanged: (value) => value = value,
        validator: validator,
        decoration: _inputDecorationStyle(label, hintText, icon));
  }

  InputDecoration _inputDecorationStyle(
      String labelText, String? hintText, IconData? icon) {
    return InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: icon != null ? Icon(icon) : null);
  }
}
