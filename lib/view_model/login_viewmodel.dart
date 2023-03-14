import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
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
  FirebaseAuth auth = FirebaseAuth.instance;
  final userRef = FirebaseDatabase.instance.ref('users');

  navigateToSignUp() {
    navigationService.navigateToSignUpPage();
  }

  navigateToHomeView() {
    navigationService.navigateToUserHomeView();
  }

  login(context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      // User? user = FirebaseAuth.instance.currentUser;
      // var kk = FirebaseFirestore.instance
      //     .collection('users')
      //     .doc(user!.uid)
      //     .get()
      //     .then((DocumentSnapshot documentSnapshot) {
      //   if (documentSnapshot.exists) {
      //     if (documentSnapshot.get('role') == "user") {
      //       navigateToHomeView();
      //       print("Hogya");
      //     } else {
      //       navigateToHomeView();
      //       print("nahi Hogya");
      //     }
      //   }
      // });

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
