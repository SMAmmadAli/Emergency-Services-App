import 'package:flutter/material.dart';
import 'package:squip/utils/colors.dart';

class PoliceView extends StatelessWidget {
  const PoliceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: MyColor.lightBlack,
              ))),
      body: Container(
        color: MyColor.lightBlue,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
