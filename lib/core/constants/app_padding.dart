import 'package:flutter/material.dart';

abstract class AppPadding {
  static const double verySmall = 4.0;
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 20.0;
  static const double extraLarge = 30.0;
  static const contentPaddingTextFormField = EdgeInsets.symmetric(
    horizontal: medium,
    vertical: medium,
  );
  static const verySmallPadding = EdgeInsets.all(verySmall);
  static const smallPadding = EdgeInsets.all(small);
  static const mediumPadding = EdgeInsets.all(medium);
  static const largePadding = EdgeInsets.all(large);
}
