import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:takeaway_app/config/providers/providers.dart';
import 'package:takeaway_app/ui/pages/home/widgets/store_img_custom.dart';
import 'package:takeaway_app/ui/pages/pages.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: const QrCodeButtomMenu(),
      // bottomNavigationBar: const AppBarMenu(),
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Hola Joham Guilarte',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        toolbarHeight: 40,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.bell,
                color: Colors.black,
              ))
        ],
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 90,
                  child: Card(
                    color: MyTextSample.backgroundColors,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: Stack(alignment: Alignment.center, children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Disponible",
                              style: MyTextSample.subtitle(context)!),
                          Text("\$ 200.00", style: MyTextSample.title(context)!)
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
              //const CreditCard(),
              const SizedBox(
                height: 20,
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: MyTextSample.backgroundColors,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    _TextHeadCustom(
                        alignment: Alignment.topLeft,
                        text: 'Nuestros Aliados',
                        style: MyTextSample.subhead(context)!),
                    const Divider(height: 0),
                    const SizedBox(
                      height: 5,
                    ),
                    const _ItemsCategoryStore(title: 'Tecnología'),
                    const SizedBox(
                      height: 20,
                    ),
                    const _ItemsCategoryStore(title: 'Ropa'),
                    const SizedBox(
                      height: 30,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('assets/images/logo.png',
                          width: 150, height: 30, fit: BoxFit.fill),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget moneyShowWidget(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const WidgetSpan(child: Icon(FontAwesomeIcons.dollarSign)),
          TextSpan(
            text: '100.00',
            style: MyTextSample.headline(context)!
                .copyWith(color: Colors.white, fontFamily: "monospace"),
          )
        ],
      ),
    );
  }
}

class _ItemsCategoryStore extends StatelessWidget {
  const _ItemsCategoryStore({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TextHeadCustom(
            alignment: Alignment.centerLeft,
            text: title,
            style: MyTextSample.subtitle(context)!),
        const StoriesCustom(),
      ],
    );
  }
}

class _TextHeadCustom extends StatelessWidget {
  const _TextHeadCustom({
    super.key,
    required this.alignment,
    required this.text,
    required this.style,
  });

  final AlignmentGeometry alignment;
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: SizedBox(
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
