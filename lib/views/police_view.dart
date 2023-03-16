import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:squip/utils/colors.dart';
import 'package:squip/view_model/firebrigade_viewmodel.dart';
import 'package:squip/view_model/police_viewmodel.dart';
import 'package:squip/views/admin_homeview.dart';
import 'package:squip/widgets/user_form.dart';
import 'package:stacked/stacked.dart';

import '../utils/text.dart';
import '../widgets/user_text.dart';

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
              body: Column(
                children: [
                  UserText(
                    text: MyText.policeservice,
                    color: MyColor.greyBlack,
                    letterSpacing: 2,
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
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdminHomeView()));
                      },
                      child: Text("Admin Page"))
                ],
              ));
        });
  }
}
