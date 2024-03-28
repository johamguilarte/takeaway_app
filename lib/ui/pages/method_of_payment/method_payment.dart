import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:takeaway_app/config/providers/providers.dart';
import 'package:takeaway_app/config/providers/theme_provider.dart';
import 'package:takeaway_app/config/routes/routes.dart';

class MethodPayment extends StatelessWidget {
  const MethodPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Plan de Pagos',
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
        child: Column(
          children: [
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Seleccione el plan que mas le convenga: ",
                  style: MyTextSample.medium(context),
                ),
              ),
            ),
            const _CardMethodPayment(
              buttonName: "45 días",
              fee: "200.00",
              interest: "0.00",
              total: "500.00",
              numberFee: "1 cuota",
            ),
            const _CardMethodPayment(
              buttonName: "22 días",
              fee: "100.00",
              interest: "0.00",
              total: "500.00",
              numberFee: "2 cuota",
            ),
            const _CardMethodPayment(
              buttonName: "14 días",
              fee: "66.66",
              interest: "0.00",
              total: "500.00",
              numberFee: "3 cuota",
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Nota: Excepteur reprehenderit ad ullamco ea voluptate reprehenderit exercitation adipisicing culpa nulla. Elit est esse incididunt nisi amet id ea tempor dolore reprehenderit est magna dolor. Nulla labore sunt dolor est velit voluptate reprehenderit officia. Esse nisi laborum cupidatat amet in fugiat irure magna tempor dolore ullamco id ullamco consequat. Excepteur amet quis ullamco nulla sunt officia do est nisi voluptate aliquip cillum minim. Elit do sint reprehenderit eiusmod voluptate mollit amet.",
                  style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.justify,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CardMethodPayment extends StatelessWidget {
  const _CardMethodPayment({
    super.key,
    required this.interest,
    required this.total,
    required this.fee,
    required this.numberFee,
    required this.buttonName,
  });

  final String interest;
  final String total;
  final String fee;
  final String numberFee;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "\$ $fee",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text("/ $numberFee",
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      final arguments =
                          (ModalRoute.of(context)?.settings.arguments ??
                              <String, dynamic>{}) as Map;
                      final List<Barcode> barcodes = arguments['barcodes'];

                      for (final barcode in barcodes) {
                        print(barcode.rawValue ?? "No Data found in QR");
                      }

                      Navigator.of(context).pushReplacementNamed(
                        Routes.confirmation,
                        arguments: {'barcodes': barcodes},
                      );
                    },
                    child: Text(
                      '$buttonName  >',
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                child: Divider(
                  height: 5,
                ),
              ),
              Column(
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "%",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Interes",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text("Total",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0, vertical: 8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "0.00%",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$ $interest",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text("\$ $total",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ]),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
