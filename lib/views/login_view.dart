import 'package:flutter/material.dart';
import 'package:squip/view_model/login_viewmodel.dart';
import 'package:squip/views/signup_view.dart';
import 'package:stacked/stacked.dart';
import '../utils/colors.dart';
import '../utils/text.dart';
import '../widgets/buttons.dart';
import '../widgets/have_an_account_text.dart';
import '../widgets/home_text_widget.dart';
import '../widgets/sentence.dart';
import '../widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: MyColor.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: MyColor.white,
            leading: Icon(
              Icons.arrow_circle_left_outlined,
              color: MyColor.green,
              size: 35,
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      MyText.treeText,
                      style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: MyColor.blue),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              HomeText(text: MyText.login),
              const SizedBox(
                height: 5,
              ),
              Sentence(SentenceText: MyText.loginSentence),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                text: MyText.email,
                obscureText: false,
                myController: viewModel.email,
                hintext: "Enter email",
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                text: MyText.password,
                obscureText: true,
                myController: viewModel.password,
                hintext: "Enter password",
              ),
              const SizedBox(
                height: 30,
              ),
              MyButtons(
                  buttonText: MyText.login,
                  onTapFunction: () {
                    viewModel.login(context);
                  }),
              const SizedBox(
                height: 5,
              ),
              HaveAccountText(
                text1: MyText.donthaveaccount,
                text2: MyText.signUp,
                onTapFunction: () {
                  viewModel.navigateToSignUp();
                },
              )
            ],
          ),
        );
      },
    );
  }
}
