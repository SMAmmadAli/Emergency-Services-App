import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../app/app.locator.dart';
import '../services/back_screen_service.dart';

class AmbulanceViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final goBack = locator<NavigateToBack>();

  // navigateToBack() {
  //   navigationService.navigateToUserHomeView();
  // }

  AudioCall() async {
    await FlutterPhoneDirectCaller.callNumber("+923308465535");
  }

  List<String> itemsList = [
    'Chest pain',
    'Choking',
    'Stroke',
    'Heavy bleeding',
    'Severe head injury',
  ];

  TextEditingController name = TextEditingController();
  TextEditingController location = TextEditingController();

  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;
  addData() async {
    _firestore
        .collection("Ambulance Users")
        .doc('User To Ambulance')
        .collection("${_auth.currentUser!.uid}")
        .add({"name": name.text, "task": location.text});
    name.clear();
    location.clear();
  }
}
