import 'package:firebase_auth_module/core/constants/app_padding.dart';
import 'package:firebase_auth_module/screens/register/controller/register_controller.dart';
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
              Image.asset('assets/logo.png'),
              RegisterForm(formKey: formKey, email: email, password: password),
              ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    await RegisterController.to
                        .register(email.text, password.text);
                  }
                },
                child: Text('Register'),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
