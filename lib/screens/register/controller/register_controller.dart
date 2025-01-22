import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_module/core/base_controller.dart';
import 'package:firebase_auth_module/core/constants/app_strings.dart';
import 'package:firebase_auth_module/core/repository/auth_repo.dart';
import 'package:firebase_auth_module/core/routes/app_routes.dart';
import 'package:firebase_auth_module/core/utils/handle_firebase_auth_exception.dart';
import 'package:get/get.dart';

class RegisterController extends BaseController {
  final AuthRepo authRepo;
  RegisterController(this.authRepo);
  static RegisterController get to => Get.find<RegisterController>();
  Future<void> register(String email, String password) async {
    try {
      showLoading();
      final result = await authRepo.register(email, password);
      hideLoading();
      await Future.delayed(Duration(seconds: 2));
      if (result != null) {
        Get.offAllNamed(AppRoutes.home);
      }
      showMessage(
        AppStrings.registerationSuccessfull,
        '${AppStrings.registerAs} : ${result?.email.toString()}',
      );
    } on FirebaseAuthException catch (e) {
      hideLoading();
      handleFirebaseAuthException(e);
    } catch (e) {
      hideLoading();
      showMessage(
        AppStrings.register,
        '${AppStrings.errorColon} ${e.toString()}',
      );
    }
  }
}
