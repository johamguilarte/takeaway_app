import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:takeaway_app/config/providers/providers.dart';
import 'package:takeaway_app/config/providers/theme_provider.dart';
import 'package:takeaway_app/ui/widgets/timeline_widget.dart';

class DatePayPages extends StatelessWidget {
  const DatePayPages({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.calendar_month)),
              Tab(icon: Icon(FontAwesomeIcons.history)),
            ],
          ),
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Calendario de Pago',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: const TabBarView(
          children: [_CalendarTimeLine(), _AccountExtractBack()],
        ),
      ),
    );
  }
}

class _CalendarTimeLine extends StatelessWidget {
  const _CalendarTimeLine();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.all(8.0),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Orden N°",
                style: MyTextSample.subtitle(context)!.copyWith(fontSize: 24),
              ),
              Text(
                " #5432",
                style:
                    MyTextSample.subtitleBold(context)!.copyWith(fontSize: 24),
              ),
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.calendarCheck,
                  size: 30,
                ),
                Text(
                  "Monto Total",
                  style: MyTextSample.subtitleBold(context)!
                      .copyWith(fontSize: 20),
                ),
                const SizedBox(),
                const SizedBox(),
                Text(
                  "\$ 200",
                  style: MyTextSample.subtitleBold(context)!
                      .copyWith(fontSize: 20, color: Colors.red.shade400),
                ),
                const SizedBox(),
              ],
            ),
          ),
          const TimeLineWidget(
              isFirst: true,
              isLast: false,
              isPast: true,
              title: "Marzo 27, 2024",
              amount: "\$ 37,50"),
          const TimeLineWidget(
              isFirst: false,
              isLast: false,
              isPast: true,
              title: "Marzo 27, 2024",
              amount: "\$ 37,50"),
          const TimeLineWidget(
              isFirst: false,
              isLast: true,
              isPast: false,
              title: "Marzo 27, 2024",
              amount: "\$ 37,50"),
          const Align(
              alignment: Alignment.center,
              child: Text(
                "Dolor nisi anim duis laborum ipsum. Eu laborum nulla adipisicing ad irure irure adipisicing tempor cillum cupidatat consectetur ad occaecat aute.",
                textAlign: TextAlign.center,
              )),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  child: Image.asset('assets/images/logo.png',
                      width: 150, height: 30, fit: BoxFit.fill),
                ),
              ]))
        ],
      ),
    );
  }
}

/*
class _ConmingSoon extends StatelessWidget {
  const _ConmingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            FontAwesomeIcons.calendarCheck,
            size: 120,
            color: Colors.black,
          ),
          Text(
            'Proximamente',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}

*/
class _AccountExtractBack extends StatelessWidget {
  const _AccountExtractBack();

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        margin: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            accountItems(
                "My Store 20 C.A", r"+ $ 200.00", "28-04-24", "compra", true,
                oddColour: const Color(0xFFF7F7F9)),
            accountItems(
                "Nombre de tienda", r"+ $ 36.66", "26-04-24", "pago", false),
            accountItems(
                "Llevatelo App", r"+ $ 36.66", "26-04-24", "abono", false,
                oddColour: const Color(0xFFF7F7F9), isLlevatelo: true),
            accountItems(
              "Nombre de tienda",
              r"+ $ 36.66",
              "25-04-24",
              "pago",
              false,
            ),
            accountItems(
                "Llevatelo App", r"+ $ 200.00", "04-04-24", "abono", false,
                oddColour: const Color(0xFFF7F7F9), isLlevatelo: true),
            const Divider(),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  "Dolor nisi anim duis laborum ipsum. Eu laborum nulla adipisicing ad irure irure adipisicing tempor cillum cupidatat consectetur ad occaecat aute.",
                  textAlign: TextAlign.center,
                )),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.asset('assets/images/logo.png',
                        width: 150, height: 30, fit: BoxFit.fill),
                  ),
                ]))
          ],
        ),
      ),
    ]);
  }
}

Container accountItems(String item, String charge, String dateString,
        String type, bool isCredit,
        {Color oddColour = Colors.white, bool isLlevatelo = false}) =>
    Container(
      decoration: BoxDecoration(color: oddColour),
      padding:
          const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(item, style: const TextStyle(fontSize: 16.0)),
              Text(charge,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: isLlevatelo
                          ? Colors.green.shade400
                          : isCredit
                              ? Colors.red.shade700
                              : Colors.black))
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(dateString,
                  style: const TextStyle(color: Colors.grey, fontSize: 14.0)),
              Text(type,
                  style: const TextStyle(color: Colors.grey, fontSize: 14.0))
            ],
          ),
        ],
      ),
    );
