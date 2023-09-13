import 'package:chat_app/config/dependency_injection.dart';
import 'package:chat_app/features/auth/view/login_view.dart';
import 'package:chat_app/features/auth/view/register_view.dart';
import 'package:chat_app/features/splash/view/splash_view.dart';
import 'package:flutter/material.dart';

class Routes{
  static const String splashView = '/splash_view';
  static const String loginView = '/login_view';
  static const String registerView = '/register_view';
}

class RouteGenerator {

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:
        initSplash();
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginView:
        initAuthModule();
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerView:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      default:
        return unDefinedRoute();
    }
  }


  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No Route Found'),
        ),
        body: const Center(
          child: Text('No Route Found'),
        ),
      ),
    );
  }

}