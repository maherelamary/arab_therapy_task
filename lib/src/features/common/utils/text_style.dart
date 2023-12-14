import 'package:arab_therapy_task/src/features/common/extension/sizes_extension.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  AppTextStyle._();

  ///FONTS WEIGHTS
  static const fontWeightRegular = FontWeight.w400;
  static const fontWeightMedium = FontWeight.w600;
  static const fontWeightBold = FontWeight.w700;

  ///FONT FAMILY
  static const _appFontFamily = '';

  ///FONT SIZES
  static final fontSizeSmall = (12.0).hDp;
  static final fontSizeRegular = (16.0).hDp;
  static final fontSizeMedium = (18.0).hDp;
  static final fontSizeLarge = (20.0).hDp;

  static final defaultAppTextStyle = TextStyle(
    fontSize: fontSizeRegular,
    fontFamily: _appFontFamily,
    fontWeight: fontWeightRegular,
    color: Colors.black,
  );
}
