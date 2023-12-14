import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';

class SnackHelper {
  static void showSnackBar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    final snackBar = SnackBar(
      content: Text(
        msg,
        style: TextStyle(
          fontSize: AppTextStyle.fontSizeRegular,
          color: Colors.white,
        ),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showErrorSnackBar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    final snackBar = SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text(
          msg,
          style: TextStyle(
            fontSize: AppTextStyle.fontSizeRegular,
            color: Colors.white,
          ),
        ));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
