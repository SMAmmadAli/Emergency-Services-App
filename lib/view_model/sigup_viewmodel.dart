import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:squip/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../app/app.locator.dart';

class SignUpViewModel extends BaseViewModel {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final navigationService = locator<NavigationService>();

  navigateToLogin() {
    navigationService.navigateToLoginPage();
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  DatabaseReference userRef = FirebaseDatabase.instance.ref().child('users');

  displayErrorMessage(String message) {
    Fluttertoast.showToast(msg: message);
  }

  signup(context) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.text, password: password.text);
      Navigator.pop(context);
      userRef
          .child(auth.currentUser!.uid)
          .set({"Email": email.text, "Password": password.text});
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        displayErrorMessage("The password provided is too weak.");
        // print('The password provided is too weak.');
        // return const AlertDialog(
        //   title: Text("The password provided is too weak."),
        //   actions: [Text("Skip")],
        // );
      } else if (e.code == 'email-already-in-use') {
        // print('The account already exists for that email.');
        displayErrorMessage("The account already exists for that email.");
        // return const AlertDialog(
        //   title: Text("The account already exists for that email."),
        //   actions: [Text("Skip")],
        // );
      }
    } catch (e) {
      displayErrorMessage(e.toString());
      print(e);
    }
  }
}
