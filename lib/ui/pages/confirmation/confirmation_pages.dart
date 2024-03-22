import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ConfirmationPages extends StatelessWidget {
  const ConfirmationPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    final List<Barcode> barcodes = arguments['barcodes'];

    for (final barcode in barcodes) {
      print(barcode.rawValue ?? "No Data found in QR");
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Orden Confirmación',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 40,
        elevation: 0,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 300,
            ),
            Positioned(
              left: (MediaQuery.of(context).size.width -100) / 2,
              top: 125,
              child: const SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://i.kinja-img.com/image/upload/c_fit,q_60,w_645/909621250c9b1516972b8bff14266af1.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                ))
          ])
        ]),
      ),
    );
  }
}
