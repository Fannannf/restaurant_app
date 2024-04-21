import 'package:flutter/material.dart';
import 'package:restauran_app/routers/routers.dart';
import 'package:restauran_app/utils/app_colors.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.background),
      debugShowCheckedModeBanner: false,
      title: "Restaurant App",
      routerConfig: router,
    );
  }
}
