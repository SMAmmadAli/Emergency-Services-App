import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:squip/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';
import '../views/user_homeview.dart';

class HomeViewModel extends BaseViewModel {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final navigationService = locator<NavigationService>();

  navigateToSignUp() {
    navigationService.navigateToSignUpPage();
  }

  navigateToHomeView() {
    navigationService.navigateToUserHomeView();
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  DatabaseReference userRef = FirebaseDatabase.instance.ref().child('users');

  login(context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      if (userRef != null) {
//         userRef.child('users').once().then((DataSnapshot snapshot) {

// });
        // userRef.child("users").once().then(DataSnapshot snaps){
        // };
      }
      // Navigator.pushReplacement(context,
      //     MaterialPageRoute(builder: (context) => const UserHomeView()));
      navigateToHomeView();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
