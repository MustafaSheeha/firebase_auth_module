import 'package:get/get_utils/get_utils.dart';

abstract class AppValidators {
  static String? validateEmail(String? value) {
    final trimmedValue = value?.trim() ?? "";
    if (trimmedValue.isEmpty) {
      return 'Please enter an email address';
    }
    if (value == null || !GetUtils.isEmail(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }
  static String? validatePassword(String? value) {
    final trimmedValue = value?.trim() ?? "";
    if (trimmedValue.isEmpty) {
      return 'Please enter a password';
    }
    if (value!.length < 6) {
      return 'must be at least 6 characters long';
    }
    return null;
  }
  static String? validateNotEmpty(String? value) {
    final trimmedValue = value?.trim() ?? "";
    if (trimmedValue.isEmpty) {
      return 'This field cannot be empty';
    }
    return null;
  }
}
