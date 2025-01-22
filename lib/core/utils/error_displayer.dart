import 'package:firebase_auth_module/core/constants/app_strings.dart';
import 'package:get/get.dart';

mixin ErrorDisplayer {
  void displayError(dynamic error) {
    Get.snackbar(AppStrings.error, error.toString());
  }
}