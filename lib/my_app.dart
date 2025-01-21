import 'package:firebase_auth_module/core/routes/app_pages.dart';
import 'package:firebase_auth_module/core/routes/app_routes.dart';
import 'package:firebase_auth_module/initial_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialBinding: InitialBinding(),
      initialRoute: AppRoutes.splash,
      getPages: AppPages.routes,
    );
  }
}
