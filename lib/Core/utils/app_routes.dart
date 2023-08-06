import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_clean_arch/Core/utils/service_locator.dart';
import 'package:mvvm_clean_arch/Features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo_impl.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/book_details_screen.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/home_screen.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view_model/similar_books/similar_books_cubit.dart';
import 'package:mvvm_clean_arch/Features/search/presentation/view/search_screen.dart';
import 'package:mvvm_clean_arch/Features/search/presentation/view_model/cubit/search_cubit.dart';

import '../../Features/search/data/repo/search_repo_impl.dart';
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
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child: BookDetailsScreen(bookModel: state.extra as BookModel),
          );
        },
      ),
      GoRoute(
        path: '/homeScreen/searchScreen',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SearchCubitCubit(getIt.get<SearchRepoImpl>()),
            child: const SearchScreen(),
          );
        },
      ),
    ],
  );
}
