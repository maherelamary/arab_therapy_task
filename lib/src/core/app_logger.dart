import 'package:flutter/foundation.dart';

class AppLogger {
  static void log({required Object? message}) {
    if (kDebugMode) {
      print("**APP-LOG** $message");
    }
  }

  static void detailedLog({required String title, required Object? message}) {
    if (kDebugMode) {
      print("**APP-LOG** $title \n **description** =>$message=<");
    }
  }
}
