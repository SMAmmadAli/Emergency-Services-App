import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:squip/utils/colors.dart';
import 'package:squip/view_model/firebrigade_viewmodel.dart';
import 'package:squip/view_model/police_viewmodel.dart';
import 'package:squip/widgets/user_form.dart';
import 'package:stacked/stacked.dart';

class PoliceView extends StatelessWidget {
  const PoliceView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => PoliceViewModel(),
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
              body: UserForm(
                items: viewModel.itemsList,
                myController1: viewModel.name,
                myController2: viewModel.location,
                added: () {
                  viewModel.addData();
                },
              ));
        });
  }
}
