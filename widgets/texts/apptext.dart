import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
      {required this.text,
      this.color = Colors.black,
      this.size = 16,
      this.weight = FontWeight.normal});

  final String text;
  final Color color;
  final double size;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Axiforma',
          color: color,
          fontSize: size,
          fontWeight: weight),
    );
  }
}
