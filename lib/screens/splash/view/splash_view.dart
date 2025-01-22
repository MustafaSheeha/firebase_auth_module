import 'package:firebase_auth_module/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.purple.shade300,
              Colors.blue.shade400,
              Colors.pink.shade300,
            ],
          ),
        ),
        child: Center(
          child: Image.asset(AppAssets.logo),
        ),
      ),
    );
  }
}
