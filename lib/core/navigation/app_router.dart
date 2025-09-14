import 'package:social_networking_app/presentation/auth/presentation/pages/login_page.dart';
import 'package:social_networking_app/presentation/splash/presentation/pages/introduce_page.dart';
import 'package:social_networking_app/presentation/splash/presentation/pages/splash_page.dart';

import '../../presentation/auth/presentation/pages/signup_page.dart';
import 'app_routes.dart';

class AppRouter {
  static final routes = {
  AppRoutes.login: (context) => const LoginPage(),
  AppRoutes.splash: (context) => const SplashPage(),
  AppRoutes.signup: (context) => const SignupPage(),
  AppRoutes.introduce: (context) => const IntroducePage(),
// AppRoutes.home: (context) => const HomePage(),
// AppRoutes.splash: (context) => const SplashPage(),
};}