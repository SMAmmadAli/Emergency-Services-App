import 'package:squip/views/login_view.dart';
import 'package:squip/views/signup_view.dart';
import 'package:squip/views/user_homeview.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: LoginPage, initial: true),
  MaterialRoute(page: SignUpPage),
  MaterialRoute(page: UserHomeView),
], dependencies: [
  Singleton(classType: NavigationService)
])
class App {}
