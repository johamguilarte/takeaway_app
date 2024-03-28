import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DatePayPages extends StatelessWidget {
  const DatePayPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Calendario de Pago',
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
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.calendarCheck,
              size: 120,
              color: Colors.black,
            ),
            Text(
              'Proximamente',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
