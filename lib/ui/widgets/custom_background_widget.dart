import 'package:flutter/material.dart';

class CustomBackgroundWidget extends StatelessWidget {
  const CustomBackgroundWidget(
      {Key? key, required this.child, required this.assetsImage})
      : super(key: key);

  final Widget child;
  final String assetsImage;

  @override
  Widget build(BuildContext context) {
    late Image img = Image.asset(assetsImage,
        width: double.infinity, height: double.infinity, fit: BoxFit.fill);

    return Scaffold(
        body: Stack(
      children: [img, child],
    ));
  }
}
