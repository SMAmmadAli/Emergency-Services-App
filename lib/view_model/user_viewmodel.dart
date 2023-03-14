import 'package:squip/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../app/app.locator.dart';

class UserViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  navigateToPolice() {
    navigationService.navigateToPoliceView();
  }

  navigateToFire() {
    navigationService.navigateToFireBrigadeView();
  }

  navigateToAmbulance() {
    navigationService.navigateToAmbulanceView();
  }
}
