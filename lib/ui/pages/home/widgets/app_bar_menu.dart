import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../config/providers/providers.dart';

class AppBarMenu extends StatelessWidget {
  const AppBarMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        //color: const Color.fromRGBO(82, 170, 94, 1.0),}
        color: MyTextSample.backgroundColors,
        //shape: const CircularNotchedRectangle(),
        shape: const CircularNotchedRectangle(),
        height: 70,
        notchMargin: 6,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.house)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.calendar)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.history)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.userLarge))
            ],
          ),
        ));
  }
}

double defaultRadius = 8.0;
const double _cardWidth = 115;

/// returns Radius
BorderRadius radius([double? radius]) {
  return BorderRadius.all(radiusCircular(radius ?? defaultRadius));
}

/// returns Radius
Radius radiusCircular([double? radius]) {
  return Radius.circular(radius ?? defaultRadius);
}
