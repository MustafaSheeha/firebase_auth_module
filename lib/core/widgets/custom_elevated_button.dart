import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.formKey,
    required this.email,
    required this.password,
    required this.buttonText,
    required this.backgroundColor,
    required this.onPressed,
  });
  final String buttonText;
  final GlobalKey<FormState> formKey;
  final TextEditingController email;
  final TextEditingController password;
  final Color backgroundColor;
  final Future<void> Function(String, String) onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (formKey.currentState!.validate()) {
          await onPressed(email.text, password.text);
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
