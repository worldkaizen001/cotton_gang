
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../src/pages/onboarding/onboarding_page.dart';
import '../src/widgets/bottom_navigation.dart';

final GoRouter router = GoRouter(
  // errorBuilder: ,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
      routes: <RouteBase>[
        GoRoute(

          path: 'navbar',
          builder: (BuildContext context, GoRouterState state) {
            return const BottomNavigation();
          },
        ),
      ],
    ),
  ],
);
