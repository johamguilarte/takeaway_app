import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
// Obtain shared preferences.
  static late SharedPreferences _prefs;
  static bool _isDarkMode = false;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static bool get darkMode {
    return _prefs.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set darkMode(bool isDarkMode) {
    _isDarkMode = isDarkMode;
    _prefs.setBool('isDarkMode', _isDarkMode);
  }
}
