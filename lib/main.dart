import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:squip/app/app.locator.dart';
import 'package:squip/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

import 'firebase_options.dart';

void main() async {
  await setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
