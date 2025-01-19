import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  var isLoading = false.obs;
  void showLoading() => Get.dialog(
        CircularProgressIndicator(),
      );
  void hideLoading() => Get.back();

  void showMessage(String title, String message) {
    Get.snackbar(title, message);
  }
}
