import 'package:flutter/material.dart';
import 'package:navigation/pages/counter_page.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/pages/menu_page.dart';
import 'package:navigation/routes/routes.dart';

import '../pages/splash_page.dart';

T getArguments<T>(BuildContext context) {
  return ModalRoute.of(context)!.settings.arguments as T;
}

Map<String, Widget Function(BuildContext)> get appRoutes => {
  Routes.home: (context) => const MenuPage(),
  Routes.counter: (context) => const CounterPage(),
  Routes.login: (context) => LoginPage(
    email: getArguments<String>(context),
  ),
  Routes.splash: (context) => const SplashPage(),
};
