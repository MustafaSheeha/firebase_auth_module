import 'package:firebase_auth_module/screens/home/controller/home_controller.dart';
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
            onPressed: () async {
              await HomeController.to.logout();
            },
            child: Text('Logout')),
      ),
    );
  }
}
