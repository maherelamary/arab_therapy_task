import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';

class WhyArabTherapyItem extends StatelessWidget {
  final String title;
  final String content;
  const WhyArabTherapyItem(
      {super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.hDp,
      height: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(112, 112, 112, 0.24)),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: 18.hDp, vertical: 10.vDp),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Image.asset(
              ImagesAssets.imagePlaceHolder,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  title,
                  style: AppTextStyle.defaultAppTextStyle.copyWith(
                    fontSize: AppTextStyle.fontSizeMedium,
                    fontWeight: AppTextStyle.fontWeightMedium,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 4.vDp),
                Expanded(
                  child: Text(
                    content,
                    style: AppTextStyle.defaultAppTextStyle.copyWith(
                      fontSize: AppTextStyle.fontSizeSmall,
                      color: ColorsPalette.appTextColor,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
