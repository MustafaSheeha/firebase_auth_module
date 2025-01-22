
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
        Get.offAllNamed('/login');
      },
      child: Text(
        "Already have an account? Login",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
