import 'package:flutter/material.dart';
import 'package:squip/utils/colors.dart';
import 'package:squip/view_model/firebrigade_viewmodel.dart';
import 'package:squip/widgets/user_form.dart';
import 'package:stacked/stacked.dart';

import '../utils/text.dart';
import '../widgets/user_text.dart';

class FireBrigadeView extends StatelessWidget {
  FireBrigadeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => FireBrigadeViewModel(),
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
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: UserText(
                      text: MyText.fireservice,
                      color: MyColor.greyBlack,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  UserForm(
                    items: viewModel.itemsList,
                    myController1: viewModel.name,
                    myController2: viewModel.location,
                    hintText: "please select option",
                    added: () {
                      viewModel.addData();
                    },
                  ),
                ],
              ));
        });
  }
}
