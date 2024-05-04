import 'package:flutter/material.dart';
import 'package:takeaway_app/config/providers/providers.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineWidget extends StatelessWidget {
  const TimeLineWidget(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      required this.title,
      required this.amount});
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String title;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle:
            LineStyle(color: isPast ? Colors.black : Colors.black26),
        indicatorStyle: IndicatorStyle(
            width: 40,
            color: isPast ? Colors.black87 : Colors.grey.shade400,
            iconStyle: IconStyle(
              iconData: Icons.done,
              color: isPast ? Colors.white : Colors.black12,
            )),
        endChild: _EventCard(
          title: title,
          amount: amount,
        ),
      ),
    );
  }
}

class _EventCard extends StatelessWidget {
  const _EventCard({
    super.key,
    required this.title,
    required this.amount,
  });
  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: MyTextSample.subtitle(context)!,
              ),
              Text(amount, style: MyTextSample.subtitleBold(context)!)
            ],
          ),
        ));
  }
}
