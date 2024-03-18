import 'package:flutter/material.dart';

class BackgroundWidgets extends StatelessWidget {
  final Widget child;

  const BackgroundWidgets({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            const _PurpleBox(),
            SafeArea(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 30),
                child: const Icon(
                  Icons.person_pin_circle_rounded,
                  color: Colors.white,
                  size: 100,
                ),
              ),
            ),
            child
          ],
        ));
  }
}

class _PurpleBox extends StatelessWidget {
  const _PurpleBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.37,
      decoration: _decorationPurpleBox(),
      child: const Stack(children: [
        Positioned(left: 30, top: 90, child: _BubbleBox()),
        Positioned(left: -30, top: -40, child: _BubbleBox()),
        Positioned(right: -20, top: -60, child: _BubbleBox()),
        Positioned(left: 10, bottom: -50, child: _BubbleBox()),
        Positioned(right: 20, bottom: 120, child: _BubbleBox()),
      ]),
    );
  }

  BoxDecoration _decorationPurpleBox() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(63, 63, 156, 1),
        Color.fromRGBO(98, 78, 178, 1)
      ]));
}

class _BubbleBox extends StatelessWidget {
  const _BubbleBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}
