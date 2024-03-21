import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanCameraWidget extends StatefulWidget {
  const ScanCameraWidget({Key? key}) : super(key: key);

  @override
  State<ScanCameraWidget> createState() => _ScanCameraWidgetState();
}

class _ScanCameraWidgetState extends State<ScanCameraWidget> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Escanear QR',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 40,
        elevation: 0,
        automaticallyImplyLeading: true,
      ),
      body: SizedBox(
        height: double.infinity,
        child: MobileScanner(onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          for (final barcode in barcodes) {
            print(barcode.rawValue ?? "No Data found in QR");
          }
        }),
      ),
    );
  }
}
