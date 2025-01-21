import 'package:firebase_auth_module/screens/home/controller/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.blue, Colors.purple],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
          ),
        ),
        child: Center(
        child: ElevatedButton(
            onPressed: () async {
              await HomeController.to.logout();
            },
            child: Text('Logout')),
      ),
    ));
  }
}
