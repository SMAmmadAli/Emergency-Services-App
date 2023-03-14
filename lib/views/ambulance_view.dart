import 'package:flutter/material.dart';
import 'package:squip/utils/colors.dart';

class AmbulanceView extends StatelessWidget {
  const AmbulanceView({super.key});

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
        color: MyColor.lightBlack,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
