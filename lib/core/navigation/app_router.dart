import 'package:provider/provider.dart';


import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/signup_page.dart';
import '../../features/auth/presentation/provider/checkbox_provider.dart';
import '../../features/interest/data/repositories/interest_repository_impl.dart';
import '../../features/interest/domain/usecases/get_interests.dart';
import '../../features/interest/domain/usecases/toggle_interest.dart';
import '../../features/interest/pages/interest_selection_page.dart';
import '../../features/interest/provider/interest_provider.dart';
import '../../features/intro/presentation/pages/introduce_page.dart';
import '../../features/intro/presentation/pages/splash_page.dart';
import 'app_routes.dart';


class AppRouter {
  static late final routes = {
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