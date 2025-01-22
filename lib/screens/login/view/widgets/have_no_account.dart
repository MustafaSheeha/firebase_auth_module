
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
        Text('Don\'t have an account?'),
        TextButton(
            onPressed: () {
              Get.toNamed('/register');
            },
            child: Text(
              'Register Now',
              style: TextStyle(color: Colors.deepOrange.shade700),
            )),
      ],
    );
  }
}
