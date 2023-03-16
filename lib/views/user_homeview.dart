import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:squip/utils/colors.dart';
import 'package:squip/utils/text.dart';
import 'package:squip/view_model/user_viewmodel.dart';
import 'package:squip/widgets/user_container.dart';
import 'package:squip/widgets/user_text.dart';
import 'package:stacked/stacked.dart';

class UserHomeView extends StatelessWidget {
  const UserHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => UserViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            backgroundColor: const Color(0xfffafafa),
            appBar: AppBar(
                centerTitle: true,
                title: UserText(
                  text: MyText.UserScreen,
                  color: Colors.black87,
                  letterSpacing: 3,
                )),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UserText(
                            text: MyText.treeText,
                            color: MyColor.greyBlack,
                            letterSpacing: 2,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          UserText(
                            text: MyText.userScreenText,
                            color: MyColor.lightBlack,
                            letterSpacing: 1,
                          ),
                          UserText(
                            text: MyText.userScreenText1,
                            color: MyColor.lightBlack,
                            letterSpacing: 1,
                          )
                        ],
                      ),
                    )),
                    Expanded(
                        child: UserContainer(
                      text: MyText.police,
                      color: MyColor.greyBlack,
                      newScreen: () {
                        viewModel.navigateToPolice();
                      },
                    )),
                    Expanded(
                        child: UserContainer(
                      text: MyText.fire,
                      color: MyColor.greyBlack,
                      newScreen: () {
                        viewModel.navigateToFire();
                      },
                    )),
                    Expanded(
                        child: UserContainer(
                      text: MyText.ambulance,
                      color: MyColor.greyBlack,
                      newScreen: () {
                        viewModel.navigateToAmbulance();
                      },
                    ))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
