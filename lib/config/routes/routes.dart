import 'package:flutter/material.dart';
import 'package:takeaway_app/ui/pages/pages.dart';
import 'package:takeaway_app/ui/widgets/widgets.dart';

class Routes {
  static String initialRoute = 'splash';
  static String login = 'login';
  static String welcome = 'welcome';
  static String home = 'home';
  static String register = 'register';
  static String scan = 'qr_scan';

  static Map<String, Widget Function(BuildContext)> routes() {
    return {
      'splash': (_) => const SplashPages(),
      'welcome': (_) => const ControlPages(),
      'login': (_) => const LoginPages(),
      'register': (_) => const RegisterPages(),
      'home': (_) => const HomePages(),
      'qr_scan': (_) => const ScanCameraWidget()
    };
  }
}
