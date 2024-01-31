import 'package:flutter/material.dart';
import 'package:techlearn/pages/home_page.dart';
import 'package:techlearn/pages/login_page.dart';
import 'package:techlearn/pages/splash_page.dart';

class TechLearnRoutes {
  static const splash = '/splash';
  static const login = '/login';
  static const home = '/home';

  static Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return _getRoute(const LoginPage(), settings);
      case home:
        return _getRoute(const HomePage(title: 'Home'), settings);
      default:
        return _getRoute(const SplashPage(), settings);
    }
  }

  static MaterialPageRoute<dynamic> _getRoute(
          Widget widget, RouteSettings settings) =>
      MaterialPageRoute(builder: (c) => widget, settings: settings);
}
