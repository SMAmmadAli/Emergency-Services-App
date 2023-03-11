// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i5;
import 'package:flutter/material.dart';
import 'package:squip/views/login_view.dart' as _i2;
import 'package:squip/views/signup_view.dart' as _i3;
import 'package:squip/views/user_homeview.dart' as _i4;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i6;

class Routes {
  static const loginPage = '/';

  static const signUpPage = '/sign-up-page';

  static const userHomeView = '/user-home-view';

  static const all = <String>{
    loginPage,
    signUpPage,
    userHomeView,
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
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class LoginPageArguments {
  const LoginPageArguments({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

class SignUpPageArguments {
  const SignUpPageArguments({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

extension NavigatorStateExtension on _i6.NavigationService {
  Future<dynamic> navigateToLoginPage({
    _i5.Key? key,
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
    _i5.Key? key,
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

  Future<dynamic> replaceWithLoginPage({
    _i5.Key? key,
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
    _i5.Key? key,
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
}
