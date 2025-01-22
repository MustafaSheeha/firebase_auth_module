import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_module/core/base_controller.dart';
import 'package:firebase_auth_module/core/repository/auth_repo_impl.dart';
import 'package:firebase_auth_module/core/utils/handle_firebase_auth_exception.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  final AuthRepoImpl authRepoImpl;

  HomeController(this.authRepoImpl);

  static HomeController get to => Get.find<HomeController>();

  Future<void> logout() async {
    try {
      showLoading();
      await Future.delayed(const Duration(seconds: 1));
      hideLoading();
      await authRepoImpl.logout();
      Get.offAllNamed('/login');
    } on FirebaseAuthException catch (e) {
      handleFirebaseAuthException(e);
    } catch (e) {
      showMessage('Logout', 'Error: ${e.toString()}');
    } finally {
      hideLoading();
    }
  }
}
