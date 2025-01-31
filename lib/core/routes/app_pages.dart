import 'package:firebase_auth_module/core/routes/app_routes.dart';
import 'package:firebase_auth_module/screens/home/bindings/home_binding.dart';
import 'package:firebase_auth_module/screens/home/view/home_view.dart';
import 'package:firebase_auth_module/screens/login/bindings/login_binding.dart';
import 'package:firebase_auth_module/screens/login/view/login_view.dart';
import 'package:firebase_auth_module/screens/register/bindings/register_binding.dart';
import 'package:firebase_auth_module/screens/register/view/register_view.dart';
import 'package:firebase_auth_module/screens/splash/bindings/splash_binding.dart';
import 'package:firebase_auth_module/screens/splash/view/splash_view.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      binding: SplashBinding(),
      page: () => SplashView(),
    ),
    GetPage(
      name: AppRoutes.home,
      binding: HomeBinding(),
      page: () => HomeView(),
    ),
    GetPage(
      name: AppRoutes.login,
      binding: LoginBinding(),
      page: () => LoginView(),
    ),
    GetPage(
      name: AppRoutes.register,
      binding: RegisterBinding(),
      page: () => RegisterView(),
    ),
  ];
}
