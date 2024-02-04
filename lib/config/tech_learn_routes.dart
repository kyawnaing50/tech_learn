import 'package:flutter/material.dart';
import 'package:techlearn/pages/home_page.dart';
import 'package:techlearn/pages/omboarding_page.dart';
import 'package:techlearn/pages/onboaeding_other_way/onboarding_two.dart';
import 'package:techlearn/pages/login_page.dart';
import 'package:techlearn/pages/onboaeding_other_way/onboarding_three.dart';
import 'package:techlearn/pages/splash_page.dart';
import '../pages/onboaeding_other_way/onboarding_one.dart';

class TechLearnRoutes {
  static const splash = '/splash';
  static const home = '/home';
  static const login = '/login';
  static const welcome = '/welcome';
  static const interact = '/interact';
  static const online = '/online';
  static const onboarding = '/onboarding';

  static Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return _getRoute(const LoginPage(), settings);
      case home:
        return _getRoute(const HomePage(title: 'Home'), settings);
      case welcome:
        return _getRoute(const OnboardingOne(), settings);
      case interact:
        return _getRoute(const OnboardingTwo(), settings);
      case online:
        return _getRoute(const OnboardingThree(), settings);
      case onboarding:
        return _getRoute(const OnboardingPage(), settings);
      default:
        return _getRoute(const SplashPage(), settings);
    }
  }

  static MaterialPageRoute<dynamic> _getRoute(
          Widget widget, RouteSettings settings) =>
      MaterialPageRoute(builder: (c) => widget, settings: settings);
}
