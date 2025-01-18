import 'package:flutter/material.dart';

abstract class AppBorderRadius {
  static const double small = 12.0;
  static const double medium = 18.0;
  static const double large = 24.0;
  static BorderRadius smallBorderRadius = BorderRadius.circular(
    small,
  );
  static BorderRadius mediumBorderRadius = BorderRadius.circular(
    medium,
  );
  static BorderRadius largeBorderRadius = BorderRadius.circular(
    large,
  );
}
