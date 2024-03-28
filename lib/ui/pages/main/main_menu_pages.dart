import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:takeaway_app/config/providers/providers.dart';
import 'package:takeaway_app/ui/pages/date_pay/date_pay_pages.dart';
import 'package:takeaway_app/ui/pages/home/home.dart';
import 'package:takeaway_app/ui/pages/home/widgets/qr_code_buttom_menu.dart';
import 'package:takeaway_app/ui/pages/movement/movement_pages.dart';

class MainMenuPages extends StatefulWidget {
  const MainMenuPages({super.key});

  @override
  State<MainMenuPages> createState() => _MainMenuPagesState();
}

class _MainMenuPagesState extends State<MainMenuPages> {
  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;
  Color selectedColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [
      const HomePages(),
      const DatePayPages(),
      const QrCodeButtomMenu(),
      const MovementPages(),
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      body: AnimatedContainer(
          duration: const Duration(seconds: 1),
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: _onPageChanged,
            itemCount: children.length,
            itemBuilder: (BuildContext context, int index) {
              return children[_selectedItemPosition];
            },
          )),
      bottomNavigationBar: SnakeNavigationBar.color(
        height: 70,
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: bottomBarShape,
        padding: padding,
        backgroundColor: MyTextSample.backgroundColors,
        snakeViewColor: selectedColor,
        selectedItemColor:
            snakeShape == SnakeShape.indicator ? selectedColor : null,
        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.home), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.calendar), label: 'Calendario'),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.qrcode), label: 'Escaner'),
          BottomNavigationBarItem(icon: Icon(CustomIcons.user), label: 'Perfil')
        ],
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
      ),
    );
  }

  void _onPageChanged(int page) {
    switch (page) {
      case 0:
        setState(() {
          snakeBarStyle = SnakeBarBehaviour.floating;
          snakeShape = SnakeShape.circle;
          padding = const EdgeInsets.all(12);
          bottomBarShape =
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25));
          showSelectedLabels = false;
          showUnselectedLabels = false;
        });
        break;
    }
  }
}

class CustomIcons {
  static const IconData calendar = Icons.calendar_month;
  static const IconData home = FontAwesomeIcons.house;
  static const IconData qrcode = FontAwesomeIcons.qrcode;
  static const IconData user = FontAwesomeIcons.user;
}
