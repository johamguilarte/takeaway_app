import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:takeaway_app/ui/pages/welcome_pages/widgets/custom_button_widget.dart';
import 'package:takeaway_app/ui/widgets/widgets.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        CustomBackgroundWidget(
            assetsImage: 'assets/images/background1.jpg',
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Title
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Llévatelo app",
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 32.0,
                          fontWeight: FontWeight.w600,
                        ),
                        speed: const Duration(milliseconds: 150),
                      ),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 800),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  // espace blank
                  const SizedBox(height: 5),
                  // subtitle
                  const Text(
                    'La compra es tuya, el momento es ahora, Llévatelo.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  // espace blank
                  const SizedBox(height: 75),
                  //buttons
                  const CustomButtonWidget()
                ],
              ),
            )),
      ],
    ));
  }
}
