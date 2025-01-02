import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_rent/core/theme/app_theme.dart';
import 'package:home_rent/routes/app_routes.dart';
import 'core/bindings/initial_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.menu,
      getPages: AppRoutes.routes,
    );
  }
}
