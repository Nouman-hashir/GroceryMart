import 'package:grocery_mart/grocery_mart.dart';

class AppRouter {
  static final router = GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: true,
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        name: AppRoutes.splash.name,
        builder: (context, state) => const SplashScreen(),
      ),

      GoRoute(
        path: '/home',
        name: AppRoutes.home.name,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/onboarding',
        name: AppRoutes.onboarding.name,
        builder: (context, state) => const OnboardingScreen(),
      ),
     GoRoute(
        path: '/navbar',
        name: AppRoutes.navbar.name,
        builder: (context, state) {
          final selectedIndex = state.extra as int?;
          if (selectedIndex == null) {
            return BottomNavScreen();
          } else {
            return BottomNavScreen(screenIndex: selectedIndex);
          }
        },
      ),
    ],
  );
}
