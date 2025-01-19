import 'package:firebase_auth_module/core/services/firebase_auth_service.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FirebaseAuthService());
  }
}
