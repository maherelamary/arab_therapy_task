import 'package:flutter/material.dart';

abstract class ColorsPalette {
  ColorsPalette._();
  static Color appPrimaryColor = Colors.blue[900]!;
  static const appTextColor = Color(0xFF7c7d7e);
  static const appAccentTextColor = Colors.black87;

  static final defaultAppBarColor = Colors.grey.shade800;

  ///SHIMMER
  static const darkShimmerColor = Color(0xFFd5d5d5);
  static const brighterShimmerColor = Color(0xFFf5f5f5);
}
