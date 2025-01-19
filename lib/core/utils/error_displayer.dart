import 'package:get/get.dart';

mixin ErrorDisplayer {
  void displayError(dynamic error) {
    Get.snackbar('Error', error.toString());
  }
}