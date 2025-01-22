import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_module/core/base_controller.dart';
import 'package:firebase_auth_module/core/repository/auth_repo.dart';
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
        Get.offAllNamed('/home');
      }
      showMessage(
        'Registeration successfull',
        'Login as : ${result?.email.toString()}',
      );
    } on FirebaseAuthException catch (e) {
      hideLoading();
      handleFirebaseAuthException(e);
    } catch (e) {
      hideLoading();
      showMessage(
        'register',
        'error: ${e.toString()}',
      );
    }
  }
}
