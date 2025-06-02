import 'package:flutter/material.dart';
import 'package:ujian_rakryan/view/home.dart';
import 'package:ujian_rakryan/view/login.dart';
import 'package:ujian_rakryan/view/logout.dart';
import 'package:ujian_rakryan/view/profile.dart';


class AppRoutes {
  static const String home = '/home';
  static const String profile = '/profile';
  static const String logout = '/logout';
  static const String login = '/login';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const Home());
      case profile:
        return MaterialPageRoute(builder: (_) => const Profile());
      case logout:
        return MaterialPageRoute(builder: (_) => const Logout());
      case login:
        return MaterialPageRoute(builder: (_) => const Login());
      default:
        return MaterialPageRoute(
          builder: (_) => const Home(),
          settings: RouteSettings(name: home),
        );
    }
  }
}