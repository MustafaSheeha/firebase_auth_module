import 'package:firebase_auth_module/core/base_controller.dart';
import 'package:firebase_auth_module/core/routes/app_routes.dart';
import 'package:firebase_auth_module/core/services/firebase_auth_service.dart';
import 'package:get/get.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 2), () {
      FirebaseAuthService.to.authStateChanges.listen((user) {
        if (user != null) {
          Get.offNamed(AppRoutes.home);
        } else {
          Get.offNamed(AppRoutes.login);
        }
      });
    });

    super.onInit();
  }
}
