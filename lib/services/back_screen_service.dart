import 'package:squip/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class NavigateToBack {
  navigateToBack() {
    final navigationService = locator<NavigationService>();
    navigationService.navigateToUserHomeView();
  }
}
