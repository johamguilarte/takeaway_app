import 'package:flutter/material.dart';

class ElavatedButtonCustom extends StatelessWidget {
  const ElavatedButtonCustom({
    Key? key,
    required this.text,
    this.margin = const EdgeInsets.symmetric(horizontal: 20),
    this.height = 0,
    this.width = double.infinity,
    this.onPressed,
    this.textColor,
    this.textSize = 13,
    this.leadingChild,
    this.trailingChild,
  }) : super(key: key);
  final EdgeInsetsGeometry margin;
  final double height;
  final double width;
  final void Function()? onPressed;
  final String text;
  final Color? textColor;
  final double textSize;
  final Widget? trailingChild;
  final Widget? leadingChild;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(width, height),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: onPressed,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(right: leadingChild == null ? 0.0 : 10),
            child: leadingChild,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          )
        ]),
      ),
    );
  }
}
