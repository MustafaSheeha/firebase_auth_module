import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  var isLoading = false.obs;
  void showLoading() => Get.dialog(
        Center(
          child: SizedBox(
            width: 100.0,
            height: 100.0,
            child: CircularProgressIndicator(),
          ),
        ),
      );
  void hideLoading() => Get.back();

  void showMessage(String title, String message) {
    Get.snackbar(title, message);
  }
}
