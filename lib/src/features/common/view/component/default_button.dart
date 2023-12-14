import 'package:arab_therapy_task/src/features/common/utils/text_style.dart';
import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';

class DefaultButton extends StatelessWidget {
  final String label;
  final Color labelColor;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final TextStyle? labelStyle;

  const DefaultButton(
      {Key? key,
      required this.label,
      this.labelStyle,
      this.labelColor = Colors.white,
      this.backgroundColor,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: 6.0, horizontal: 18.0),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide.none,
          ),
        ),
        backgroundColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return ColorsPalette.appPrimaryColor.withOpacity(0.5);
          }

          return backgroundColor ?? ColorsPalette.appPrimaryColor;
        }),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: labelStyle ??
            AppTextStyle.defaultAppTextStyle.copyWith(
              fontSize: AppTextStyle.fontSizeRegular,
              fontWeight: AppTextStyle.fontWeightMedium,
              color: labelColor,
            ),
      ),
    );
  }
}
