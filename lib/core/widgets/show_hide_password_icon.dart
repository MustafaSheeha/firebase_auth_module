import 'package:firebase_auth_module/core/constants/app_colors.dart';
import 'package:firebase_auth_module/core/constants/app_icons.dart';
import 'package:flutter/material.dart';

class ShowHidePasswoedIcon extends StatelessWidget {
  const ShowHidePasswoedIcon({
    super.key,
    required bool isObscured,
  }) : _isObscured = isObscured;

  final bool _isObscured;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        _isObscured ? AppIcons.visibility : AppIcons.visibilityOff,
        color: AppColors.grey,
      ),
    );
  }
}
