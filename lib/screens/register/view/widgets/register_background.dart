import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterBackground extends StatelessWidget {
  const RegisterBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple.shade200,
                Colors.pink.shade100,
                Colors.blue.shade50,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
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
            radius: 150,
            backgroundColor: Colors.white.withOpacity(0.2),
          ),
        ),
      ],
    );
  }
}
