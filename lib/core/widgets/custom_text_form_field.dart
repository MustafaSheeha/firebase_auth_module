import 'package:firebase_auth_module/core/constants/app_colors.dart';
import 'package:firebase_auth_module/core/constants/app_decorations.dart';
import 'package:firebase_auth_module/core/constants/app_padding.dart';
import 'package:firebase_auth_module/core/constants/app_typography.dart';
import 'package:firebase_auth_module/core/widgets/show_hide_password_icon.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.isBordered = true,
    this.onChanged,
    this.counter,
    this.error,
    this.filled,
    this.helper,
    this.icon,
    this.label,
    this.prefix,
    this.prefixIcon,
    this.prefixIconColor,
    this.prefixText,
    this.suffix,
    this.suffixIcon,
    this.suffixText,
    this.controller,
    this.hintText,
    this.isPassword = false,
    this.obscureText = false,
    this.validator,
    this.keyboardType,
    this.onTap,
    this.readOnly,
  });
  final TextEditingController? controller;
  final bool isBordered;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final Widget? counter;
  final Widget? error;
  final bool? filled;
  final Widget? helper;
  final String? hintText;
  final Widget? icon;
  final Widget? label;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final String? prefixText;
  final Widget? suffix;
  final Widget? suffixIcon;
  final String? suffixText;
  final bool isPassword;
  final bool obscureText;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final bool? readOnly;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _isObscured;
  @override
  void initState() {
    super.initState();
    _isObscured = widget.isPassword && widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: widget.readOnly ?? false,
      onTap: widget.onTap,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      onChanged: widget.onChanged,
      obscureText: _isObscured,
      textInputAction: TextInputAction.next,
      onTapOutside: onTapOutside,
      controller: widget.controller,
      cursorColor: AppColors.primary,
      style: AppTypography.textFormFieldStyle,
      decoration: decoration(),
      validator: widget.validator,
    );
  }

  InputDecoration decoration() {
    return AppDecorations.textFormFieldDecoration(
      isBordered: widget.isBordered,
      contentPadding: AppPadding.contentPaddingTextFormField,
      counter: widget.counter,
      error: widget.error,
      filled: widget.filled,
      helper: widget.helper,
      hintText: widget.hintText,
      icon: widget.icon,
      label: widget.label,
      prefix: widget.prefix,
      prefixIcon: widget.prefixIcon,
      prefixIconColor: widget.prefixIconColor,
      prefixText: widget.prefixText,
      suffix: suffix(),
      suffixIcon: widget.isPassword ? null : widget.suffixIcon,
      suffixText: widget.suffixText,
    );
  }

  Widget? suffix() {
    return widget.isPassword
        ? GestureDetector(
            onTap: onTapObscured,
            child: ShowHidePasswoedIcon(isObscured: _isObscured),
          )
        : widget.suffix;
  }

  void onTapObscured() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  void onTapOutside(PointerDownEvent event) {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
