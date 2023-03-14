import 'package:flutter/material.dart';

class UserText extends StatelessWidget {
  final String text;
  final Color color;
  final double letterSpacing;
  const UserText(
      {super.key,
      required this.text,
      required this.color,
      required this.letterSpacing});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
