import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:squip/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../app/app.locator.dart';

class FireBrigadeViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  navigateToBack() {
    navigationService.navigateToUserHomeView();
  }

  AudioCall() async {
    await FlutterPhoneDirectCaller.callNumber("+923308465535");
  }

  List<String> itemsList = [
    'Cylinder Blast',
    'Short Circuit',
    'Flammable liquids',
    'Solid materials',
    'Electrical Fires',
  ];

  TextEditingController name = TextEditingController();
  TextEditingController location = TextEditingController();

  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;
  addData() async {
    _firestore
        .collection("Firebrigade User")
        .doc('User To firebrigade')
        .collection("${_auth.currentUser!.uid}")
        .add({"name": name.text, "location": location.text});
    print("Added");
    name.clear();
    location.clear();
  }
}
