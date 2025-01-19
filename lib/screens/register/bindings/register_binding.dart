import 'package:firebase_auth_module/core/repository/auth_repo_impl.dart';
import 'package:firebase_auth_module/core/services/firebase_auth_service.dart';
import 'package:firebase_auth_module/screens/register/controller/register_controller.dart';
import 'package:get/get.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RegisterController(AuthRepoImpl(FirebaseAuthService())));
  }
}
