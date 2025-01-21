import 'package:firebase_auth_module/core/constants/app_padding.dart';
import 'package:firebase_auth_module/core/widgets/vertical_spacer.dart';
import 'package:firebase_auth_module/screens/login/controller/login_controller.dart';
import 'package:firebase_auth_module/screens/login/view/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late GlobalKey<FormState> formKey;
  late TextEditingController email;
  late TextEditingController password;
  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    email = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pink.shade100, Colors.purple.shade100],
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
          Padding(
            padding: AppPadding.mediumPadding,
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 200,
                  height: 200,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                VerticalSpacer(20),
                LoginForm(formKey: formKey, email: email, password: password),
                VerticalSpacer(20),
                ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      await LoginController.to.login(email.text, password.text);
                    }
                  },
                  child: Text('Login'),
                ),
                VerticalSpacer(20),
                Text('Don\'t have an account?'),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/register');
                  },
                  child: Text('Register Now'),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
