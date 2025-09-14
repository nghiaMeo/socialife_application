import 'package:provider/provider.dart';

import '../../presentation/auth/presentation/pages/login_page.dart';
import '../../presentation/auth/presentation/pages/signup_page.dart';
import '../../presentation/auth/presentation/provider/checkbox_provider.dart';
import '../../presentation/interest/data/repositories/interest_repository_impl.dart';
import '../../presentation/interest/domain/usecases/get_interests.dart';
import '../../presentation/interest/domain/usecases/toggle_interest.dart';
import '../../presentation/interest/pages/interest_selection_page.dart';
import '../../presentation/interest/provider/interest_provider.dart';
import '../../presentation/splash/presentation/pages/introduce_page.dart';
import '../../presentation/splash/presentation/pages/splash_page.dart';
import 'app_routes.dart';


class AppRouter {
  static final routes = {
    AppRoutes.login: (context) => ChangeNotifierProvider(
      create: (_) => CheckboxProvider(),
      child: const LoginPage(),
    ),
    AppRoutes.signup: (context) => ChangeNotifierProvider(
      create: (_) => CheckboxProvider(),
      child: const SignupPage(),
    ),
    AppRoutes.splash: (context) => const SplashPage(),
    AppRoutes.introduce: (context) => const IntroducePage(),
    AppRoutes.interest: (context) {
      final repo = InterestRepositoryImpl();
      final getInterests = GetInterests(repo);
      final toggleInterest = ToggleInterest(repo);

      return ChangeNotifierProvider(
        create: (_) => InterestProvider(
          getInterestsUseCase: getInterests,
          toggleInterestUseCase: toggleInterest,
        ),
        child: const InterestSelectionPage(),
      );
    },
  };
}