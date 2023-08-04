import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Features/splash/presentation/view/spalsh_screen.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MVVMTestApp',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryColor,
      ),
      home: const SplashScreen(),
    );
  }
}
