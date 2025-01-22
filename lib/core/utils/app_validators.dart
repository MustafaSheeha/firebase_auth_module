import 'package:firebase_auth_module/core/constants/app_strings.dart';
import 'package:get/get_utils/get_utils.dart';

abstract class AppValidators {
  static String? validateEmail(String? value) {
    final trimmedValue = value?.trim() ?? "";
    if (trimmedValue.isEmpty) {
      return AppStrings.thisFieldIsRequired;
    }
    if (value == null || !GetUtils.isEmail(value)) {
      return AppStrings.pleaseEnterAValidEmailAddress;
    }
    return null;
  }
  static String? validatePassword(String? value) {
    final trimmedValue = value?.trim() ?? "";
    if (trimmedValue.isEmpty) {
      return AppStrings.thisFieldIsRequired;
    }
    if (value!.length < 6) {
      return AppStrings.mustBeAtLeast6CharactersLong;
    }
    return null;
  }
  static String? validateNotEmpty(String? value) {
    final trimmedValue = value?.trim() ?? "";
    if (trimmedValue.isEmpty) {
      return AppStrings.thisFieldIsRequired;
    }
    return null;
  }
}
