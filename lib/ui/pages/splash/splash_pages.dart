import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:takeaway_app/ui/pages/pages.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({Key? key}) : super(key: key);

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const ControlPages()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shop_2_rounded,
            size: 80,
            color: Colors.white,
          ),
          SizedBox(height: 20),
          Text(
            'Llévatelo',
            style: TextStyle(
                fontStyle: FontStyle.italic, color: Colors.white, fontSize: 32),
          )
        ],
      ),
    ));
  }
}
