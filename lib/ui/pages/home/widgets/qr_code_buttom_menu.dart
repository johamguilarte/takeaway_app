import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:takeaway_app/config/routes/routes.dart';
import '../../../../config/providers/providers.dart';

class QrCodeButtomMenu extends StatefulWidget {
  const QrCodeButtomMenu({
    super.key,
  });

  @override
  State<QrCodeButtomMenu> createState() => _QrCodeButtomMenuState();
}

class _QrCodeButtomMenuState extends State<QrCodeButtomMenu> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: MyTextSample.backgroundColors,
      elevation: 0,
      tooltip: 'Camara',
      onPressed: () {
        Navigator.of(context).pushNamed(Routes.scan);
      },
      child: const Icon(FontAwesomeIcons.qrcode, size: 30),
    );
  }
}
