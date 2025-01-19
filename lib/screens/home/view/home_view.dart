import 'package:firebase_auth_module/core/repository/auth_repo_impl.dart';
import 'package:firebase_auth_module/core/services/firebase_auth_service.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              AuthRepoImpl(
                FirebaseAuthService(),
              ).logout();
            },
            child: Text('Logout')),
      ),
    );
  }
}
