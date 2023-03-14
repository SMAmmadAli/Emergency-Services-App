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
    await FlutterPhoneDirectCaller.callNumber("+923308465535");
  }
}
