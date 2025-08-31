import 'package:flutter/material.dart';

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  static Future<dynamic> pushReplacementNamed(String routeName,
      {Object? arguments}) {
    return navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  static Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (Route<dynamic> route) => false,
      arguments: arguments,
    );
  }

  static Future<T?> push<T extends Object?>(Route<T> route) {
    return navigatorKey.currentState!.push(route);
  }

  static void pop<T extends Object?>([T? result]) {
    return navigatorKey.currentState!.pop(result);
  }

  static bool canPop() {
    return navigatorKey.currentState!.canPop();
  }
}
