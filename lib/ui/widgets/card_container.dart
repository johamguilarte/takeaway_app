import 'package:flutter/material.dart';

class CardContainerWidgets extends StatelessWidget {
  final Widget child;

  const CardContainerWidgets({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: _boxDecorationCard(),
        child: child,
      ),
    );
  }

  BoxDecoration _boxDecorationCard() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 15, offset: Offset(0, 5))
          ]);
}
