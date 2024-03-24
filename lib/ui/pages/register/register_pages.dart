import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:takeaway_app/config/providers/providers.dart';
import 'package:takeaway_app/ui/pages/pages.dart';
import 'package:takeaway_app/ui/widgets/widgets.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({super.key});

  @override
  State<RegisterPages> createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  //TODO controller debe estar en un Provider para uso global
  final controller = PageController(viewportFraction: 1.0, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RegisterFormProvider>(context);
    List<Widget> pages = [
      _ContainerWidgets(
          child: BasicInformationForm(
        controller: controller,
      )),
      _ContainerWidgets(
          child: PinPutForm(
        formKey: provider.pinPutForm,
        onChanged: null,
        onCompleted: (p0) => {
          controller.nextPage(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeInCubic)
        },
      )),
      _ContainerWidgets(
          child: DniInformationForm(
        controller: controller,
      )),
      _ContainerWidgets(
          child: UserInformationForm(
        controller: controller,
      )),
    ];

    return Scaffold(
        body: CustomBackgroundWidget(
            assetsImage: 'assets/images/background2.jpg',
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(height: 170),
                CardContainerWidgets(
                  child: SizedBox(
                    child: Column(
                      children: [
                        //INDICATOR STEP BY STEP
                        _IndicatorWidgets(controller: controller, pages: pages),

                        const SizedBox(height: 30),
                        //PAGE OF INDICATOR
                        _ContentPages(controller: controller, pages: pages),
                      ],
                    ),
                  ),
                )
              ]),
            )));
  }
}

class _ContainerWidgets extends StatelessWidget {
  final Widget child;

  const _ContainerWidgets({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: const EdgeInsets.all(2.0),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: child);
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
      height: mediaQuery.height * 0.60,
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        itemCount: pages.length,
        itemBuilder: (_, index) {
          return pages[index];
        },
      ),
    );
  }
}

class _IndicatorWidgets extends StatelessWidget {
  const _IndicatorWidgets({
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
            width: 50,
            height: 15,
            color: Colors.purpleAccent,
            // rotationAngle: 180,
            borderRadius: BorderRadius.circular(24),
          ),
          dotDecoration: DotDecoration(
            width: 25,
            height: 13,
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
