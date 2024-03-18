import 'package:flutter/material.dart';
import 'package:takeaway_app/ui/pages/home/widgets/app_bar_menu.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 210,
        width: double.infinity,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.center,
              end: Alignment.topRight,
              colors: [
                Colors.green,
                Color.fromARGB(255, 7, 97, 45),
              ],
            ),
            borderRadius: radius(
                16)), // Adds a gradient background and rounded corners to the container
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text('Disponible',
                  style: TextStyle(fontSize: 20, color: Colors.grey.shade100)),
            ]),
            const Text('\$200.00',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)), //
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Consumido',
                    style:
                        TextStyle(fontSize: 20, color: Colors.grey.shade100)),
                Row(
                  children: [
                    const Text('\$0.00',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    const Spacer(),
                    Stack(children: [
                      Container(
                        margin: EdgeInsets.only(left: (10).toDouble()),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: radius(50), color: Colors.white),
                        child: const Image(
                            image: AssetImage('assets/images/check.png')),
                      ),
                    ]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
