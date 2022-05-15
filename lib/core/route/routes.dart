import 'package:flutter/material.dart';
import 'package:online_bookstore/core/init/error_page.dart';
import 'package:online_bookstore/views/home/home_page.dart';
import 'package:online_bookstore/views/settings/settings_page.dart';

class Routes {
  // SINGLETON

  static final Routes _instance = Routes._init();
  static Routes get instance => _instance;

  Routes._init(); //Private consructor

  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/':
        return simpleRoute(HomePage());
      case '/settings':
        return simpleRoute(SettingsPage());
      default:
        return simpleRoute(ErrorPage());
    }
  }

  simpleRoute(Widget route) {
    return MaterialPageRoute(builder: (context) => route);
  }
}
