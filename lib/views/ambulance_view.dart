import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:squip/utils/colors.dart';
import 'package:squip/view_model/ambulance_viewmodel.dart';
import 'package:squip/view_model/firebrigade_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AmbulanceView extends StatelessWidget {
  const AmbulanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => AmbulanceViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    viewModel.navigateToBack();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: MyColor.lightBlack,
                  )),
              actions: [
                IconButton(
                    onPressed: () {
                      viewModel.AudioCall();
                    },
                    icon: Icon(
                      Icons.call,
                      color: MyColor.lightBlack,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.location_on,
                      color: MyColor.lightBlack,
                    )),
              ],
            ),
            body: Container(
              color: MyColor.black,
              width: double.infinity,
              height: double.infinity,
            ),
          );
        });
  }
}
