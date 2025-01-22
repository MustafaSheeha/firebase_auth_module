import 'package:firebase_auth_module/core/constants/app_padding.dart';
import 'package:firebase_auth_module/core/widgets/custom_elevated_button.dart';
import 'package:firebase_auth_module/core/widgets/form_title.dart';
import 'package:firebase_auth_module/core/widgets/vertical_spacer.dart';
import 'package:firebase_auth_module/screens/login/controller/login_controller.dart';
import 'package:firebase_auth_module/screens/login/view/widgets/have_no_account.dart';
import 'package:firebase_auth_module/screens/login/view/widgets/login_background.dart';
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
        child: Stack(
          children: [
            LoginBackground(),
            Padding(
              padding: AppPadding.mediumPadding,
              child: Column(
                children: [
                  VerticalSpacer(Get.height * 0.25),
                  FormTitle(title: 'Login to your account'),
                  VerticalSpacer(20),
                  LoginForm(formKey: formKey, email: email, password: password),
                  VerticalSpacer(20),
                  CustomElevatedButton(
                    formKey: formKey,
                    email: email,
                    password: password,
                    buttonText: 'Login',
                    backgroundColor: Colors.deepOrange.shade300,
                    onPressed: LoginController.to.login,
                  ),
                  VerticalSpacer(20),
                  HaveNoAccount(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
