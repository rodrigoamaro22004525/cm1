import 'package:flutter/material.dart';
import 'package:cm1/main.dart';

class WelcomeCounter extends StatelessWidget {
  String buildText() {
    return "Olá Mundo!!!";
  }

  const WelcomeCounter({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Text(
      """Olá Mundo!!!
         $counter""", textScaleFactor: 3,

    );
  }
}
