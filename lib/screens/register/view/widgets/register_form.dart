import 'package:firebase_auth_module/core/utils/app_validators.dart';
import 'package:firebase_auth_module/core/widgets/custom_text_form_field.dart';
import 'package:firebase_auth_module/core/widgets/vertical_spacer.dart';
import 'package:flutter/widgets.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm(
      {super.key,
      required this.email,
      required this.password,
      required this.formKey, required this.name});
  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController password;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            validator: AppValidators.validateNotEmpty,
            controller: name,
            hintText: 'Name',
            label: Text('Name'),
          ),
          VerticalSpacer(15),
          CustomTextFormField(
            validator: AppValidators.validateEmail,
            controller: email,
            hintText: 'Email',
            label: Text('Email'),
          ),
          VerticalSpacer(15),
          CustomTextFormField(
            validator: AppValidators.validatePassword,
            isPassword: true,
            obscureText: true,
            controller: password,
            hintText: 'Password',
            label: Text('Password'),
          ),
          VerticalSpacer(15),
        ],
      ),
    );
  }
}
