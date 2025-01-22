import 'package:firebase_auth_module/core/widgets/custom_elevated_button.dart';
import 'package:firebase_auth_module/core/widgets/form_title.dart';
import 'package:firebase_auth_module/core/widgets/vertical_spacer.dart';
import 'package:firebase_auth_module/screens/register/controller/register_controller.dart';
import 'package:firebase_auth_module/screens/register/view/widgets/already_have_account.dart';
import 'package:firebase_auth_module/screens/register/view/widgets/register_background.dart';
import 'package:firebase_auth_module/screens/register/view/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late GlobalKey<FormState> formKey;
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController password;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    name = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    name.dispose();
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
            RegisterBackground(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  VerticalSpacer(Get.height * 0.16),
                  FormTitle(title: 'Create Your Account'),
                  VerticalSpacer(15),
                  RegisterForm(
                    formKey: formKey,
                    name: name,
                    email: email,
                    password: password,
                  ),
                  VerticalSpacer(15),
                  CustomElevatedButton(
                    buttonText: 'Register',
                    formKey: formKey,
                    email: email,
                    password: password,
                    backgroundColor: Colors.purple,
                    onPressed: RegisterController.to.register,
                  ),
                  AlreadyHaveAccount(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
