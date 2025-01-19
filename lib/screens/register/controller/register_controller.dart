import 'package:firebase_auth_module/core/base_controller.dart';
import 'package:firebase_auth_module/core/repository/auth_repo.dart';
import 'package:get/get.dart';

class RegisterController extends BaseController {
  final AuthRepo authRepo;
  RegisterController(this.authRepo);
  static RegisterController get to => Get.find<RegisterController>();
  Future<void> register(String email, String password) async {
    try {
      showLoading();
      await authRepo.register(email, password);
      hideLoading();
      showMessage('register', 'success');
      await Future.delayed(Duration(seconds: 2));
      Get.offAllNamed('/home');
    } on Exception catch (e) {
      hideLoading();
      showMessage(
        'register',
        'error ${e.toString()}',
      );
    }
  }
}
