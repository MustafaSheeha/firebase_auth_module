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
        child: SizedBox(
          width: Get.width,
          child: Padding(
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
        ),
      ),
    );
  }
}
