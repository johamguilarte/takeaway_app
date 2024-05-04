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
    return Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Escanealo & Llévatelo',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          toolbarHeight: 40,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.bell,
                  color: Colors.black,
                ))
          ],
          automaticallyImplyLeading: true,
        ),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: [
          Image.asset(
            "assets/gif/qr.webp",
            height: 450,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.scan);
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Escanear',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
              alignment: Alignment.center,
              child: Text(
                "Dolor nisi anim duis laborum ipsum. Eu laborum nulla adipisicing ad irure irure adipisicing tempor cillum cupidatat consectetur ad occaecat aute.",
                textAlign: TextAlign.center,
              )),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  child: Image.asset('assets/images/logo.png',
                      width: 150, height: 30, fit: BoxFit.fill),
                ),
              ]))
        ]))));

    /*FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: MyTextSample.backgroundColors,
      elevation: 0,
      tooltip: 'Camara',
      onPressed: () {
        Navigator.of(context).pushNamed(Routes.scan);
      },
      child: const Icon(FontAwesomeIcons.qrcode, size: 30),
    );*/
  }
}
