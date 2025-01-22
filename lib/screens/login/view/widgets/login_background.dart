
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange.shade300,
                Colors.deepOrange.shade200,
                Colors.pink.shade100,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          width: Get.width,
          height: Get.height,
        ),
        Positioned(
          top: -50,
          left: -50,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Colors.white.withOpacity(0.2),
          ),
        ),
        Positioned(
          bottom: -70,
          right: -70,
          child: CircleAvatar(
            radius: 120,
            backgroundColor: Colors.white.withOpacity(0.2),
          ),
        ),
        Positioned(
          top: 200,
          right: -50,
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withOpacity(0.3),
            ),
          ),
        ),
        Positioned(
          bottom: 150,
          left: -50,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow.withOpacity(0.3),
            ),
          ),
        ),
      ],
    );
  }
}
