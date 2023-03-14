// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i8;
import 'package:flutter/material.dart';
import 'package:squip/views/ambulance_view.dart' as _i7;
import 'package:squip/views/firebrigade_view.dart' as _i6;
import 'package:squip/views/login_view.dart' as _i2;
import 'package:squip/views/police_view.dart' as _i5;
import 'package:squip/views/signup_view.dart' as _i3;
import 'package:squip/views/user_homeview.dart' as _i4;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i9;

class Routes {
  static const loginPage = '/';

  static const signUpPage = '/sign-up-page';

  static const userHomeView = '/user-home-view';

  static const policeView = '/police-view';

  static const fireBrigadeView = '/fire-brigade-view';

  static const ambulanceView = '/ambulance-view';

  static const all = <String>{
    loginPage,
    signUpPage,
    userHomeView,
    policeView,
    fireBrigadeView,
    ambulanceView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.loginPage,
      page: _i2.LoginPage,
    ),
    _i1.RouteDef(
      Routes.signUpPage,
      page: _i3.SignUpPage,
    ),
    _i1.RouteDef(
      Routes.userHomeView,
      page: _i4.UserHomeView,
    ),
    _i1.RouteDef(
      Routes.policeView,
      page: _i5.PoliceView,
    ),
    _i1.RouteDef(
      Routes.fireBrigadeView,
      page: _i6.FireBrigadeView,
    ),
    _i1.RouteDef(
      Routes.ambulanceView,
      page: _i7.AmbulanceView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.LoginPage: (data) {
      final args = data.getArgs<LoginPageArguments>(
        orElse: () => const LoginPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i2.LoginPage(key: args.key),
        settings: data,
      );
    },
    _i3.SignUpPage: (data) {
      final args = data.getArgs<SignUpPageArguments>(
        orElse: () => const SignUpPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i3.SignUpPage(key: args.key),
        settings: data,
      );
    },
    _i4.UserHomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.UserHomeView(),
        settings: data,
      );
    },
    _i5.PoliceView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.PoliceView(),
        settings: data,
      );
    },
    _i6.FireBrigadeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.FireBrigadeView(),
        settings: data,
      );
    },
    _i7.AmbulanceView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.AmbulanceView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class LoginPageArguments {
  const LoginPageArguments({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

class SignUpPageArguments {
  const SignUpPageArguments({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

extension NavigatorStateExtension on _i9.NavigationService {
  Future<dynamic> navigateToLoginPage({
    _i8.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.loginPage,
        arguments: LoginPageArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUpPage({
    _i8.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.signUpPage,
        arguments: SignUpPageArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToUserHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.userHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPoliceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.policeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFireBrigadeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.fireBrigadeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAmbulanceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.ambulanceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginPage({
    _i8.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.loginPage,
        arguments: LoginPageArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignUpPage({
    _i8.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.signUpPage,
        arguments: SignUpPageArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithUserHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.userHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPoliceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.policeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFireBrigadeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.fireBrigadeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAmbulanceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.ambulanceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
