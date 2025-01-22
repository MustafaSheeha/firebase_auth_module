
import 'package:firebase_auth_module/core/constants/app_strings.dart';
import 'package:firebase_auth_module/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.offAllNamed(AppRoutes.login);
      },
      child: Text(
        AppStrings.alreadyHaveAnAccount + AppStrings.login,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
