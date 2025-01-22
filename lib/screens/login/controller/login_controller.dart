import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_module/core/base_controller.dart';
import 'package:firebase_auth_module/core/constants/app_strings.dart';
import 'package:firebase_auth_module/core/repository/auth_repo.dart';
import 'package:firebase_auth_module/core/routes/app_routes.dart';
import 'package:firebase_auth_module/core/utils/handle_firebase_auth_exception.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  final AuthRepo authRepo;
  LoginController(this.authRepo);
  static LoginController get to => Get.find<LoginController>();
  Future<void> login(String email, String password) async {
    try {
      showLoading();
      final User? result = await authRepo.login(email, password);
      hideLoading();
      await Future.delayed(Duration(seconds: 1));
      if (result != null) {
        Get.offAllNamed(AppRoutes.home);
      }
      showMessage(
        AppStrings.loginSuccessfull,
        '${AppStrings.loginAs} ${result?.email.toString()}',
      );
    } on FirebaseAuthException catch (e) {
      hideLoading();
      handleFirebaseAuthException(e);
    } catch (e) {
      hideLoading();
      showMessage(
        AppStrings.login,
        '${AppStrings.errorColon} ${e.toString()}',
      );
    }
  }
}
