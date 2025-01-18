import 'package:firebase_auth_module/core/constants/app_border_radius.dart';
import 'package:firebase_auth_module/core/constants/app_borders.dart';
import 'package:firebase_auth_module/core/constants/app_colors.dart';
import 'package:firebase_auth_module/core/constants/app_padding.dart';
import 'package:firebase_auth_module/core/constants/app_typography.dart';
import 'package:flutter/material.dart';

abstract class AppDecorations {
  static InputDecoration textFormFieldDecoration({
    required bool isBordered,
    String? hintText,
    Widget? label,
    Widget? error,
    bool? filled,
    Widget? helper,
    Widget? icon,
    Widget? prefixIcon,
    Color? prefixIconColor,
    Widget? suffixIcon,
    Widget? prefix,
    Widget? suffix,
    String? prefixText,
    String? suffixText,
    Widget? counter,
    String? labelText,
    String? errorText,
    String? counterText,
    String? helperText,
    EdgeInsetsGeometry? contentPadding,
  }) =>
      InputDecoration(
        hintText: hintText,
        hintStyle: AppTypography.hintStyle,
        label: label,
        labelStyle: AppTypography.labelStyle,
        labelText: label != null ? null : labelText,
        floatingLabelStyle: AppTypography.floatingLabelStyle,
        error: error,
        errorText: error != null ? null : errorText,
        focusColor: AppColors.primary,
        hoverColor: AppColors.primary,
        fillColor: AppColors.white,
        filled: filled ?? false,
        helper: helper,
        helperText: helper != null ? null : helperText,
        helperStyle: AppTypography.helperStyle,
        hintMaxLines: 1,
        helperMaxLines: 1,
        errorMaxLines: 1,
        icon: icon,
        iconColor: AppColors.primary,
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,
        suffixIcon: suffixIcon,
        suffixIconColor: AppColors.primary,
        prefix: prefix,
        suffix: suffix,
        prefixStyle: AppTypography.prefixStyle,
        suffixStyle: AppTypography.suffixStyle,
        prefixText: prefixText,
        suffixText: suffixText,
        counter: counter,
        counterText: counter != null ? null : counterText,
        counterStyle: AppTypography.counterStyle,
        enabledBorder: isBordered
            ? AppBorders.enabledWtithBorder
            : AppBorders.enabledWtithoutBorder,
        focusedBorder: isBordered
            ? AppBorders.focusedWithBorder
            : AppBorders.focusedWithoutBorder,
        border: isBordered ? AppBorders.withBorder : AppBorders.withoutBorder,
        errorBorder: AppBorders.errorBorder,
        focusedErrorBorder: AppBorders.focusedErrorBorder,
        disabledBorder: AppBorders.disabledBorder,
        errorStyle: AppTypography.errorStyle,
        contentPadding: AppPadding.contentPaddingTextFormField,
      );

  static BoxDecoration elevatedButtonBorder = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(AppBorderRadius.small)),
  );
}
