import 'package:firebase_auth_module/core/utils/app_validators.dart';
import 'package:firebase_auth_module/core/widgets/custom_text_form_field.dart';
import 'package:firebase_auth_module/core/widgets/vertical_spacer.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm(
      {super.key,
      required this.email,
      required this.password,
      required this.formKey,
      required this.name});
  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController password;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          border: Border.all(color: Colors.white.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextFormField(
                controller: name,
                label: Text("Name"),
                validator: AppValidators.validateNotEmpty,
              ),
              VerticalSpacer(15),
              CustomTextFormField(
                controller: email,
                label: Text("Email"),
                validator: AppValidators.validateEmail,
              ),
             VerticalSpacer(15),
              CustomTextFormField(
                controller: password,
                label: Text("Password"),
                isPassword: true,
                validator: AppValidators.validatePassword,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
