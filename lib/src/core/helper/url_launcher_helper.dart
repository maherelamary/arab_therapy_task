import 'package:arab_therapy_task/src/core/app_logger.dart';
import 'package:url_launcher/url_launcher.dart';

class AppUrlLauncher {
  static Future<void> launchInBrowser(String url) async {
    return _launchUrlString(url);
  }

  static Future<void> _launchUrlString(String url) async {
    try {
      await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.externalApplication,
      );
    } catch (err) {
      AppLogger.detailedLog(
          title: "catch error from launching url string", message: url);
    }
  }
}
