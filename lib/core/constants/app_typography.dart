import 'package:firebase_auth_module/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTypography {
  static const double smallTextSize = 12;
  static const double mediumTextSize = 16;
  static const double largeTextSize = 24;
  static const double extraLargeTextSize = 32;
  static const String cairoFontFamily = 'Cairo';
  static const String blackCairoFontWeight = 'Cairo-Black';
  static const String boldCairoFontWeight = 'Cairo-Bold';
  static const String extraBoldCairoFontWeight = 'Cairo-ExtraBold';
  static const String extraLightCairoFontWeight = 'Cairo-ExtraLight';
  static const String lightCairoFontWeight = 'Cairo-Light';
  static const String mediumCairoFontWeight = 'Cairo-Medium';
  static const String regularCairoFontWeight = 'Cairo-Regular';
  static const String semiBoldCairoFontWeight = 'Cairo-SemiBold';

  static const TextStyle smallTextStyle = TextStyle(
    fontSize: smallTextSize,
    fontFamily: cairoFontFamily,
  );

  static const TextStyle mediumTextStyle = TextStyle(
    fontSize: mediumTextSize,
    fontFamily: cairoFontFamily,
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle largeTextStyle = TextStyle(
    fontSize: largeTextSize,
    fontFamily: cairoFontFamily,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle extraLargeTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: extraLargeTextSize,
    fontFamily: cairoFontFamily,
    fontWeight: FontWeight.w900,
  );

  static const errorStyle = TextStyle(
    fontSize: mediumTextSize,
    fontFamily: cairoFontFamily,
    color: AppColors.error,
  );
  static const hintStyle = TextStyle(
    fontSize: mediumTextSize,
    fontFamily: cairoFontFamily,
    color: AppColors.hint,
  );

  static const labelStyle = TextStyle(
    fontSize: mediumTextSize,
    fontFamily: cairoFontFamily,
    color: AppColors.black,
  );

  static const floatingLabelStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: mediumTextSize,
    fontFamily: cairoFontFamily,
    color: AppColors.black,
  );

  static const helperStyle = TextStyle(
    fontSize: smallTextSize,
    fontFamily: cairoFontFamily,
    color: AppColors.hint,
  );
  static const counterStyle = TextStyle(
    fontSize: smallTextSize,
    fontFamily: cairoFontFamily,
    color: AppColors.hint,
  );
  static const prefixStyle = TextStyle(
    fontSize: smallTextSize,
    fontFamily: cairoFontFamily,
    color: AppColors.hint,
  );
  static const suffixStyle = TextStyle(
    fontSize: smallTextSize,
    fontFamily: cairoFontFamily,
    color: AppColors.hint,
  );
  static const textFormFieldStyle = TextStyle(
    fontSize: mediumTextSize,
    fontFamily: cairoFontFamily,
  );

  static const buttonStyle = TextStyle(
    fontSize: mediumTextSize,
    fontFamily: cairoFontFamily,
  );
}
