import 'package:squip/services/back_screen_service.dart';
import 'package:squip/views/admin_homeview.dart';
import 'package:squip/views/login_view.dart';
import 'package:squip/views/signup_view.dart';
import 'package:squip/views/user_homeview.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../views/ambulance_view.dart';
import '../views/firebrigade_view.dart';
import '../views/police_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: LoginPage, initial: true),
  MaterialRoute(page: SignUpPage),
  MaterialRoute(page: UserHomeView),
  MaterialRoute(page: PoliceView),
  MaterialRoute(page: FireBrigadeView),
  MaterialRoute(page: AmbulanceView),
  MaterialRoute(page: AdminHomeView),
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: NavigateToBack)
])
class App {}
