import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:squip/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../app/app.locator.dart';

class PoliceViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  navigateToBack() {
    navigationService.navigateToUserHomeView();
  }

  AudioCall() async {
    const number = '03308465535';
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
    // await FlutterPhoneDirectCaller.callNumber("+923308465535");
  }

  List<String> itemsList = [
    'Bomb Blast',
    'Cyber crime',
    'Epidemic emergencies',
    'Aircraft Crashes',
    'Active Shooter',
  ];

  TextEditingController name = TextEditingController();
  TextEditingController location = TextEditingController();

  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;
  addData() async {
    _firestore
        .collection("User Data")
        .doc('Task Data')
        .collection("${_auth.currentUser!.uid}")
        .add({"name": name.text, "task": location.text});
    name.clear();
    location.clear();
  }
}
