import 'package:flutter/material.dart';
import 'package:projectmanagement_for_project_manager/constants/routes_names.dart';
import 'package:projectmanagement_for_project_manager/pages/auth_page/login_page.dart';

class Routes {
  static Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
        );
    }
  }
}
