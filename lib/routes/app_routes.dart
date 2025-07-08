

import 'package:go_router/go_router.dart';
import 'package:grocery_mart/grocery_mart.dart';

class AppRouter {
  static final router = GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: true,
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        name: AppRoutes.home.name,
        builder: (context, state) => const HomeView(),
      ),
     
    ],
  );
}