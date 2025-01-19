import 'package:firebase_auth_module/core/services/firebase_auth_service.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.putAsync(() async => Future.value(FirebaseAuthService()),);
  }
}