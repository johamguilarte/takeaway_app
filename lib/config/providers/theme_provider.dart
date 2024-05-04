import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  ThemeProvider({
    required bool isDarkMode,
  }) : currentTheme = isDarkMode ? ThemeData.dark() : ThemeData.light();

  setLightMode() {
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = ThemeData.dark().copyWith(
        primaryColor: Colors.greenAccent,
        primaryColorLight: Colors.greenAccent);
    notifyListeners();
  }
}

RadialGradient styleGoogleIcon() {
  return const RadialGradient(
      center: Alignment(1, 2),
      colors: [
        Color.fromRGBO(66, 133, 244, 1),
        Color.fromRGBO(52, 168, 83, 1),
        Color.fromRGBO(251, 188, 5, 1),
        Color.fromRGBO(234, 67, 53, 1)
      ],
      radius: 1.0);
}

class MyTextSample {
  static Color backgroundColors = const Color(0xFFDEDEDE);
  static Color iconColors = Colors.black;

  static TextStyle? display4(BuildContext context) {
    return Theme.of(context).textTheme.displayLarge;
  }

  static TextStyle? display3(BuildContext context) {
    return Theme.of(context).textTheme.displayMedium;
  }

  static TextStyle? display2(BuildContext context) {
    return Theme.of(context).textTheme.displaySmall;
  }

  static TextStyle? display1(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: Colors.black87,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w500,
        fontSize: 25);
  }

  static TextStyle? headline(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall;
  }

  static TextStyle? title(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 28,
          // fontFamily: 'NunitoSans'
        );
  }

  static TextStyle medium(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium!.copyWith(
          fontSize: 18,
          // fontFamily: 'NunitoSans'
        );
  }

  static TextStyle? subhead(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium;
  }

  static TextStyle? body2(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge;
  }

  static TextStyle? body1(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium;
  }

  static TextStyle? caption(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall;
  }

  static TextStyle? button(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge!.copyWith(letterSpacing: 1);
  }

  static TextStyle? subtitle(BuildContext context) {
    return Theme.of(context).textTheme.titleSmall!.copyWith(
          color: Colors.black87,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          fontSize: 17,
          // fontFamily: 'NunitoSans'
        );
  }

  static TextStyle? subtitle2(BuildContext context) {
    return Theme.of(context).textTheme.titleSmall!.copyWith(
        color: Colors.black, fontStyle: FontStyle.italic, fontSize: 16);
  }

  static TextStyle? subtitleBold(BuildContext context) {
    return Theme.of(context).textTheme.titleSmall!.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        fontSize: 18);
  }

  static TextStyle? overline(BuildContext context) {
    return Theme.of(context).textTheme.labelSmall;
  }
}
