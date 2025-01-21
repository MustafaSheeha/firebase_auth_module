import 'package:firebase_auth_module/core/base_controller.dart';
import 'package:firebase_auth_module/core/repository/auth_repo_impl.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  final AuthRepoImpl authRepoImpl;
  HomeController(this.authRepoImpl);
  static HomeController get to => Get.find<HomeController>();
  Future<void> logout() async {
    try {
      showLoading();
      await authRepoImpl.logout();
      hideLoading();
      Get.offAllNamed('/login');
    } catch (e) {
      hideLoading();
      showMessage(
        'logout',
        'error: ${e.toString()}',
      );
    }
  }
}
