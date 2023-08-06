import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/book_details_screen.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/home_screen.dart';
import 'package:mvvm_clean_arch/Features/search/presentation/view/search_screen.dart';

import '../../Features/splash/presentation/view/spalsh_screen.dart';

abstract class AppRoutes {
  static const homeRoute = '/homeScreen';
  static const homeDetailsRoute = '/homeScreen/bookDetailsScreen';
  static const searchScreenRoute = '/homeScreen/searchScreen';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: '/homeScreen',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: '/homeScreen/bookDetailsScreen',
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsScreen();
        },
      ),
      GoRoute(
        path: '/homeScreen/searchScreen',
        builder: (BuildContext context, GoRouterState state) {
          return const SearchScreen();
        },
      ),
    ],
  );
}
