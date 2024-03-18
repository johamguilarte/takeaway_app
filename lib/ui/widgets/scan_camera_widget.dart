import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanCameraWidget extends StatefulWidget {
  const ScanCameraWidget({Key? key}) : super(key: key);

  @override
  State<ScanCameraWidget> createState() => _ScanCameraWidgetState();
}

class _ScanCameraWidgetState extends State<ScanCameraWidget> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
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
      body: Column(
        children: [
          Expanded(
            child: Expanded(
              flex: 5,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        String? dataInQr = result!.code;
        print('result', );
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
