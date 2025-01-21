
import 'package:firebase_auth_module/core/utils/app_validators.dart';
import 'package:firebase_auth_module/core/widgets/custom_text_form_field.dart';
import 'package:firebase_auth_module/core/widgets/vertical_spacer.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.formKey,
    required this.email,
    required this.password,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController email;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            validator: AppValidators.validateEmail,
            controller: email,
            label: Text('Email'),
            hintText: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
          ),
          VerticalSpacer(15),
          CustomTextFormField(
            validator: AppValidators.validatePassword,
            controller: password,
            label: Text('Password'),
            hintText: 'Enter your password',
            isPassword: true,
            obscureText: true,
          ),
          VerticalSpacer(15),
        ],
      ),
    );
  }
}
