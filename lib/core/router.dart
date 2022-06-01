// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/router_constants.dart';

import 'package:flutter_application_1/views/home/home_view.dart' as view0;
import 'package:flutter_application_1/views/login/login_view.dart' as view1;

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeViewRoute:
        return MaterialPageRoute(builder: (_) => view0.HomeView());
      case loginViewRoute:
        return MaterialPageRoute(builder: (_) => view1.LoginView());
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
