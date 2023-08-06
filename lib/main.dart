import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_clean_arch/Core/utils/api_service.dart';
import 'package:mvvm_clean_arch/Core/utils/app_routes.dart';
import 'package:mvvm_clean_arch/Core/utils/service_locator.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo_impl.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view_model/featured_books/cubit/featured_books_cubit.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view_model/newest_books/cubit/newest_books_cubit.dart';

import 'Features/splash/presentation/view/spalsh_screen.dart';
import 'constants.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
              ..getFeaturedBooks()),
        BlocProvider(
            create: (context) =>
                NewestBooksCubit(getIt.get<HomeRepoImpl>())..getNewestBooks()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        title: 'MVVMTestApp',
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: primaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
