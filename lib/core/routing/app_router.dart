import 'package:flutter/material.dart';
import 'package:flutter_adv_app/core/routing/routes.dart';
import 'package:flutter_adv_app/features/login/ui/widgets/login_screen.dart';
import 'package:flutter_adv_app/features/onboarding/onborading_screen.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
