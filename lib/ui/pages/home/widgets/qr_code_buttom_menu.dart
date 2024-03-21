import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:takeaway_app/config/routes/routes.dart';

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
      backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
      tooltip: 'Camara',
      onPressed: () {
        print("camara");
        Navigator.of(context).pushNamed(Routes.scan);
      },
      child: const Icon(FontAwesomeIcons.qrcode, size: 30, color: Colors.white),
    );
  }
}
