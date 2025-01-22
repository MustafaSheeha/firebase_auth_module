
import 'package:firebase_auth_module/core/constants/app_strings.dart';
import 'package:firebase_auth_module/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HaveNoAccount extends StatelessWidget {
  const HaveNoAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppStrings.haveNoAccount),
        TextButton(
            onPressed: () {
              Get.offNamed(AppRoutes.register);
            },
            child: Text(
              AppStrings.registerNow,
              style: TextStyle(color: Colors.deepOrange.shade700),
            )),
      ],
    );
  }
}
