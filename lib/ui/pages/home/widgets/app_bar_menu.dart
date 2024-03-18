import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarMenu extends StatelessWidget {
  const AppBarMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: const Color.fromRGBO(82, 170, 94, 1.0),
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.house,
                    size: 28, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.calendar,
                    size: 28, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.history, size: 28, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.userLarge,
                    size: 28, color: Colors.white))
          ],
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
