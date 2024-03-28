import 'package:flutter/material.dart';
import 'package:takeaway_app/ui/pages/main/main_menu_pages.dart';
import 'package:takeaway_app/ui/pages/method_of_payment/method_payment.dart';
import 'package:takeaway_app/ui/pages/pages.dart';
import 'package:takeaway_app/ui/widgets/widgets.dart';

class Routes {
  static String initialRoute = 'splash';
  static String login = 'login';
  static String welcome = 'welcome';
  static String home = 'home';
  static String register = 'register';
  static String scan = 'qr_scan';
  static String confirmation = 'confirmation';
  static String methodPayment = 'methodpayment';

  static Map<String, Widget Function(BuildContext)> routes() {
    return {
      'splash': (_) => const SplashPages(),
      'welcome': (_) => const ControlPages(),
      //'login': (_) => const LoginPages(),
      'register': (_) => const RegisterPages(),
      'home': (_) => const MainMenuPages(), //const HomePages(),
      'qr_scan': (_) => const ScanCameraWidget(),
      'confirmation': (_) => const ConfirmationPages(),
      'methodpayment': (_) => const MethodPayment(),
    };
  }
}
