
import 'package:flutter/material.dart';

class RoundedButtonIcons extends StatelessWidget {
  const RoundedButtonIcons({
    super.key,
    this.onPressed,
    required this.icon, this.color,
  });
  final void Function()? onPressed;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 0, color: Colors.transparent),
          shape: const CircleBorder(),
        ),
        child: Center(child: Icon(icon, size: 35.0, color: color ?? Colors.white)),
      ),
    );
  }
  }