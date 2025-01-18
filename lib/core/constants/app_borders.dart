import 'package:firebase_auth_module/core/constants/app_border_radius.dart';
import 'package:firebase_auth_module/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppBorders {
  static const OutlineInputBorder enabledWtithBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppBorderRadius.large)),
    borderSide: BorderSide(color: AppColors.black),
  );

  static const OutlineInputBorder focusedWithBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppBorderRadius.large)),
    borderSide: BorderSide(color: AppColors.black),
  );
  static const OutlineInputBorder withBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppBorderRadius.large)),
    borderSide: BorderSide(color: AppColors.black),
  );
  static const OutlineInputBorder enabledWtithoutBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppBorderRadius.large)),
    borderSide: BorderSide.none,
  );

  static const OutlineInputBorder focusedWithoutBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppBorderRadius.large)),
    borderSide: BorderSide.none,
  );
  static const OutlineInputBorder withoutBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppBorderRadius.large)),
    borderSide: BorderSide.none,
  );

  static const OutlineInputBorder errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppBorderRadius.large)),
    borderSide: BorderSide(
      color: AppColors.error,
    ),
  );

  static const OutlineInputBorder focusedErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppBorderRadius.large)),
    borderSide: BorderSide(
      color: AppColors.error,
    ),
  );

  static const OutlineInputBorder disabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppBorderRadius.large)),
    borderSide: BorderSide(
      color: AppColors.grey,
    ),
  );

  static const OutlineInputBorder focusedDisabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppBorderRadius.large)),
    borderSide: BorderSide(
      color: AppColors.grey,
    ),
  );
}
