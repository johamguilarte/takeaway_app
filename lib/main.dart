import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:takeaway_app/config/providers/providers.dart';
import 'package:takeaway_app/config/routes/routes.dart';
import 'package:takeaway_app/config/shared_preference/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(MultiProvider(
    providers: _providers,
    child: const MyApp(),
  ));
}

List<SingleChildWidget> get _providers {
  return [
    ChangeNotifierProvider(
        create: (_) => ThemeProvider(isDarkMode: Preferences.darkMode)),
    /*ChangeNotifierProvider(
      create: (_) => LoginFormProvider(),
      child: const LoginPages(),
    ),*/
    ChangeNotifierProvider(create: (_) => RegisterFormProvider()),
  ];
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Llévatelo',
        initialRoute: Routes.initialRoute,
        routes: Routes.routes(),
        theme: Provider.of<ThemeProvider>(context).currentTheme.copyWith(
            textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Poppins'),
            iconTheme: IconThemeData(color: MyTextSample.iconColors, size: 30),
            // scaffoldBackgroundColor: Colors.,
            inputDecorationTheme: InputDecorationTheme(
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2)),
              labelStyle: TextStyle(color: Colors.grey[900]),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.deepPurple[200];
                    }
                    return Colors.deepPurple[400];
                  }),
                  shape: MaterialStateProperty.resolveWith((states) =>
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  elevation: MaterialStateProperty.resolveWith((states) => 8.0),
                  textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                      (states) =>
                          const TextStyle(fontSize: 16, color: Colors.white))),
            )));
  }
}
