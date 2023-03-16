import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

class AdminViewModel extends BaseViewModel {
  CollectionReference products =
      FirebaseFirestore.instance.collection("Police Users");

  getAllProducts() async {
    return products.get();
  }
}
