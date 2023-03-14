import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:squip/view_model/sigup_viewmodel.dart';
import 'package:stacked/stacked.dart';
import '../utils/colors.dart';
import '../utils/text.dart';
import '../widgets/buttons.dart';
import '../widgets/have_an_account_text.dart';
import '../widgets/home_text_widget.dart';
import '../widgets/sentence.dart';
import '../widgets/textfield.dart';
import 'login_view.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignUpViewModel(),
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
                      // Image(
                      //   image: AssetImage(MyImage.tree),
                      //   width: 30,
                      //   height: 30,
                      // ),
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
                HomeText(text: MyText.signUp),
                const SizedBox(
                  height: 5,
                ),
                Sentence(SentenceText: MyText.loginSentence),
                const SizedBox(
                  height: 30,
                ),
                MyTextField(
                  text: "Email",
                  obscureText: false,
                  myController: viewModel.email,
                  hintext: "Email",
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  text: "Password",
                  obscureText: true,
                  myController: viewModel.password,
                  hintext: "Password",
                ),
                const SizedBox(
                  height: 30,
                ),
                MyButtons(
                    buttonText: MyText.signUp,
                    onTapFunction: () {
                      viewModel.signup(context);
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => ProductScreen()));
                    }),
                const SizedBox(
                  height: 5,
                ),
                HaveAccountText(
                    text1: "Already have account",
                    text2: "Sign in",
                    onTapFunction: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    })
              ],
            ),
          );
        });
  }
}
