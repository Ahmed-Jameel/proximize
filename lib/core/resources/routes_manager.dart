import 'package:go_router/go_router.dart';


import '../../feature/auth/login/presentation/login_page.dart';
import '../../feature/auth/register/presentation/register_page.dart';
import '../../feature/auth/onboarding/presentation/onboarding_page.dart';

class Routes {
  //TODO: review naming of the home screen
  static const String onboarding = '/';
  static const String login = '/login';
  static const String register = '/register';
}

class GoRouting {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) => const OnBoardingPage(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: Routes.register,
        builder: (context, state) => const RegisterPage(),
      ),
    ],
  );
}
