import 'package:flutter/material.dart';
import 'package:takeaway_app/config/shared_preference/preferences.dart';

class ImageSplash extends StatelessWidget {
  final String? title;
  final String? subtitle;

  const ImageSplash({super.key, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          child: Image.asset(
            height: 180,
            'assets/images/people_phone.png',
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
            child: title != null
                ? Text(
                    title!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color:
                            Preferences.darkMode ? Colors.white : Colors.black),
                  )
                : null),
        SizedBox(
            child: subtitle != null
                ? Text(
                    subtitle!,
                    style:
                        TextStyle(fontSize: 20, color: Colors.deepPurple[700]),
                  )
                : null)
      ],
    );
  }
}
