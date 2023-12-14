import 'package:arab_therapy_task/src/core/app_logger.dart';
import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';
import 'package:flutter/foundation.dart';

class Sizes{
  Sizes._();

  /// Device's BoxConstraints
  static late BoxConstraints boxConstraints;

  /// Device's Orientation
  static late Orientation orientation;

  /// Device's Height
  static late double height;

  /// Device's Width
  static late double width;

  static void setScreenSize(
      BoxConstraints constraints, Orientation currentOrientation) {
    AppLogger.detailedLog(title: "box constraints", message: "${constraints.maxWidth},${constraints.maxHeight}");
      boxConstraints = constraints;
      orientation = currentOrientation;
    if (orientation == Orientation.portrait|| kIsWeb) {
      width = boxConstraints.maxWidth;
      height = boxConstraints.maxHeight;
    } else {
      width = boxConstraints.maxHeight;
      height = boxConstraints.maxWidth;
    }
  }

  // Figma design dimensions
  static double figmaWidth = 375; // Example Figma width in pixels
  static double figmaHeight = 812; // Example Figma height in pixels

// Convert Figma pixels to Flutter's logical pixels (DP)
  static double convertWidthToDP(value) => width * (value / figmaWidth);
  static double convertHeightToDP(value) => height * (value / figmaHeight);

}