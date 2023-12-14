import 'package:arab_therapy_task/src/features/common/view/component/default_button.dart';
import 'package:arab_therapy_task/src/features/presentation/view/home/component/home_page_padding.dart';
import 'package:arab_therapy_task/src/features/presentation/view/named_items/named_items_page.dart';
import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';
import 'package:flutter_svg/svg.dart';

class StartNowContainer extends StatelessWidget {
  const StartNowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ColorsPalette.appPrimaryColor.withOpacity(0.1),
      child: Column(
        children: [
          SizedBox(height: 50.vDp),
          SizedBox(
            height: 45.vDp,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.hDp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    ImagesAssets.appSVGLogo,
                    semanticsLabel: 'LOGO',
                    fit: BoxFit.contain,
                  ),
                  DefaultButton(
                      label: "ابدا الان",
                      onPressed: () {
                        onTapped(context);
                      }),
                ],
              ),
            ),
          ),
          SizedBox(height: 40.vDp),
          HomePagePadding(
            child: Column(
              children: [
                Image.asset(
                  ImagesAssets.imagePlaceHolder,
                  height: 80.hDp,
                  width: 80.hDp,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8.vDp),
                Text(
                  "هل تشعر بالوحدة؟ نحن معك",
                  style: AppTextStyle.defaultAppTextStyle.copyWith(
                    fontSize: 26.hDp,
                    fontWeight: AppTextStyle.fontWeightBold,
                  ),
                ),
                SizedBox(height: 10.vDp),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "",
                    style: AppTextStyle.defaultAppTextStyle.copyWith(
                      fontWeight: AppTextStyle.fontWeightMedium,
                      fontSize: AppTextStyle.fontSizeMedium,
                    ),
                    children: const [
                      TextSpan(
                        text: "تحدث مع طبيب أو أخصائي نفسي عبر",
                      ),
                      TextSpan(text: "\n"),
                      TextSpan(text: "الانترنت،بكفاءة ومعايير ألمانية")
                    ],
                  ),
                ),
                SizedBox(height: 20.vDp),
                SizedBox(
                  width: 180.hDp,
                  child: DefaultButton(
                      label: "ابدا الان",
                      labelStyle: AppTextStyle.defaultAppTextStyle.copyWith(
                          fontSize: AppTextStyle.fontSizeMedium,
                          fontWeight: AppTextStyle.fontWeightBold,
                          color: Colors.white),
                      onPressed: () {
                        onTapped(context);
                      }),
                ),
              ],
            ),
          ),
          SizedBox(height: 90.vDp),
        ],
      ),
    );
  }

  void onTapped(BuildContext context) {
    Navigator.of(context).pushNamed(NamedItemsPage.routeName);
  }
}
