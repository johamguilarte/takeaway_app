import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:takeaway_app/ui/pages/welcome_pages/widgets/custom_button_widget.dart';
import 'package:takeaway_app/ui/widgets/widgets.dart';

class BusinessWidget extends StatelessWidget {
  const BusinessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        CustomBackgroundWidget(
            assetsImage: 'assets/images/background2.jpg',
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Title
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Fugiat qui ipsum sunt tempor",
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.w500,
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
                    'Aliquip laborum amet anim magna enim mollit adipisicing pariatur.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w300,
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
