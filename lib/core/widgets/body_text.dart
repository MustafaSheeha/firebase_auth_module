import 'package:firebase_auth_module/core/constants/app_typography.dart';
import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  const BodyText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTypography.smallTextStyle,
    );
  }
}
