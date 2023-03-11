import 'package:flutter/material.dart';
import '../utils/colors.dart';

class HomeText extends StatelessWidget {
  final String text;
  const HomeText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: MyColor.dartGreen),
            )
          ],
        ),
      ),
    );
  }
}
