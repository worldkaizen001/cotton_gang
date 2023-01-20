
import 'package:cotton_gang/src/pages/homepage/homepage_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../src/pages/login/login_page.dart';
import '../src/pages/onboarding/onboarding_page.dart';
import '../src/pages/register/register_page.dart';
import '../src/widgets/bottom_navigation.dart';
import 'package:cotton_gang/core/route_constants.dart';

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
          name: RouteConstants.bottomNav,

          path: 'bottomNav',
          builder: (BuildContext context, GoRouterState state) {
            return const BottomNavigation();
          },
        ),
        GoRoute(
          name: RouteConstants.login,

          path: 'loginScreen',
          builder: (BuildContext context, GoRouterState state) {
            return const  LoginScreen();
          },
        ),
        GoRoute(

          path: 'registerScreen',
          builder: (BuildContext context, GoRouterState state) {
            return const  RegisterScreen();
          },
        ),
        GoRoute(

          path: 'homepage',
          builder: (BuildContext context, GoRouterState state) {
            return  const HomepageScreen();
          },
        ),
      ],
    ),
  ],
);
