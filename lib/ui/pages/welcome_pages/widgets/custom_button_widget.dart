import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:takeaway_app/config/routes/routes.dart';
import 'package:takeaway_app/ui/widgets/widgets.dart';

class CustomButtonWidget extends StatelessWidget {
  final Color? colorFirstButton;
  final Color? colorSecondButton;

  const CustomButtonWidget({
    super.key,
    this.colorFirstButton,
    this.colorSecondButton,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: double.infinity,
          height: 60,
          child: OutlinedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(Routes.home);
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
              foregroundColor: colorFirstButton ?? Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              'Iniciar Sesión',
              style: TextStyle(fontSize: 21),
            ),
          ),
        ),
        const SizedBox(height: 13),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: OutlinedButton(
            onPressed: () {
              print('register');
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: colorSecondButton ?? Colors.white,
              side: const BorderSide(width: 2, color: Colors.pinkAccent),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              'Registrarme',
              style: TextStyle(fontSize: 22),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedButtonIcons(
                onPressed: () => {}, icon: FontAwesomeIcons.facebook),
            RoundedButtonIcons(
                onPressed: () => {}, icon: FontAwesomeIcons.github),
            RoundedButtonIcons(
                onPressed: () => {}, icon: FontAwesomeIcons.google)
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

// class _RoundedButtonIcons extends StatelessWidget {
//   const _RoundedButtonIcons({
//     super.key,
//     this.onPressed,
//     required this.icon,
//   });
//   final void Function()? onPressed;
//   final IconData icon;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: OutlinedButton(
//         onPressed: onPressed,
//         style: OutlinedButton.styleFrom(
//           side: const BorderSide(width: 0, color: Colors.pinkAccent),
//           shape: const CircleBorder(),
//         ),
//         child: Center(child: Icon(icon, size: 35.0, color: Colors.white)),
//       ),
//     );
//   }
// }
