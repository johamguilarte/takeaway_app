import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:takeaway_app/ui/pages/welcome_pages/widgets/benefit_widget.dart';
import 'package:takeaway_app/ui/pages/welcome_pages/widgets/business_widget.dart';
import 'package:takeaway_app/ui/pages/welcome_pages/widgets/welcome_widget.dart';

class ControlPages extends StatelessWidget {
  const ControlPages({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 1.0, keepPage: true);

    List<Widget> pages = [
      const WelcomeWidget(),
      const BusinessWidget(),
      const BenefitWidget(),
    ];

    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          _ContentPages(controller: controller, pages: pages),
          Center(
            child: Column(children: [
              const SizedBox(height: 30),
              _IndicatorBar(controller: controller, pages: pages),
            ]),
          ),
        ],
      ),
    ));
  }
}

class _IndicatorBar extends StatelessWidget {
  const _IndicatorBar({
    required this.controller,
    required this.pages,
  });

  final PageController controller;
  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SmoothPageIndicator(
        controller: controller,
        count: pages.length,
        effect: CustomizableEffect(
          activeDotDecoration: DotDecoration(
            width: 60,
            height: 20,
            color: Colors.pinkAccent.shade700,
            rotationAngle: 180,
            borderRadius: BorderRadius.circular(24),
          ),
          dotDecoration: DotDecoration(
            width: 30,
            height: 14,
            color: Colors.grey,
            borderRadius: BorderRadius.circular(16),
            verticalOffset: 0,
          ),
          spacing: 9.0,
          inActiveColorOverride: (_) => const Color.fromARGB(255, 49, 82, 109),
        ),
      ),
    );
  }
}

class _ContentPages extends StatelessWidget {
  const _ContentPages({
    required this.controller,
    required this.pages,
  });

  final PageController controller;
  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent.withOpacity(0.0),
      height: mediaQuery.height,
      child: PageView.builder(
        controller: controller,
        itemCount: pages.length,
        itemBuilder: (_, index) {
          return pages[index];
        },
      ),
    );
  }
}
