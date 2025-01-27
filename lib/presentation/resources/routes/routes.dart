import 'package:byco_task/presentation/health/health.dart';
import 'package:byco_task/presentation/refer_a_friend/refer_a_friend.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String healthRoute = "/health";
  static const String refarAFriendRoute = "/friend";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.healthRoute:
        return MaterialPageRoute(builder: (_) => const HealthView());
      case Routes.refarAFriendRoute:
        return MaterialPageRoute(builder: (_) => const ReferAFriendView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}

class AppStrings {
  static const String noRouteFound = "OOPS! No Route Found";
}
