import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:takeaway_app/config/providers/providers.dart';
import 'package:takeaway_app/config/routes/routes.dart';

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
          'Confirmación',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 40,
        elevation: 0,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            const SizedBox(
              width: double.infinity,
              height: 350,
            ),
            Positioned(
                left: (MediaQuery.of(context).size.width - 200) / 2,
                top: 125,
                child: const SizedBox(
                  width: 200,
                  height: 200,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://i.kinja-img.com/image/upload/c_fit,q_60,w_645/909621250c9b1516972b8bff14266af1.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                ))
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hola Joham,",
                    style: MyTextSample.body1(context)!
                        .copyWith(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Valide su operación antes de aceptar, gracias por preferirnos.",
                    style: MyTextSample.body1(context)!
                        .copyWith(fontSize: 13, fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "ORDEN DE COMPRA:     #235612",
                    style: MyTextSample.body1(context)!
                        .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cancelado en Tienda: ",
                              style: MyTextSample.body1(context)!.copyWith(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            Text("\$ 300.00",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Llévatelo a Casa:",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold)),
                            Text("\$ 200.00",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red.shade400))
                          ],
                        ),
                        const Divider(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total: ",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            Text("\$  500.00",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 15, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "DETALLE DE COMPRA:",
                    style: MyTextSample.body1(context)!
                        .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(
                  height: 10,
                ),
                Card(
                  color: Colors.grey.shade200,
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tienda: ",
                              style: MyTextSample.body1(context)!.copyWith(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            Text("MY STORE C.A",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Producto:",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold)),
                            Text("Playstation 5",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Número de Cuotas:",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold)),
                            Text("3",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Fecha de Pago 1°:",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold)),
                            Text("25/03/2024",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Fecha de Pago 2°:",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold)),
                            Text("09/04/2024",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Fecha de Pago 3°:",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold)),
                            Text("24/04/2024",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold))
                          ],
                        ),
                        const Divider(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Cuota: ",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                            Text("\$  66.66",
                                style: MyTextSample.body1(context)!.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red.shade400))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(Routes.home);
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Aceptar',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
