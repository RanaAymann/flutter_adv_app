import 'package:flutter/material.dart';
import 'package:flutter_adv_app/core/routing/routes.dart';
import 'package:flutter_adv_app/features/home/logic/cubit/home_cubit.dart';
import 'package:flutter_adv_app/features/home/ui/home_screen.dart';
import 'package:flutter_adv_app/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_adv_app/features/login/ui/login_screen.dart';
import 'package:flutter_adv_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter_adv_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:flutter_adv_app/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen as ( arguments as ClassName )
    final arguments = settings.arguments;

// BlocProvider here not in main file
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        // calls the API when entering home screen, while creating the object
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const HomeScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUpScreen(),
          ),
        );
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
