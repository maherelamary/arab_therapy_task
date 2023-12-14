import 'package:arab_therapy_task/src/features/common/view/component/default_button.dart';
import 'package:arab_therapy_task/src/features/presentation/view/home/component/home_page_padding.dart';
import 'package:arab_therapy_task/src/features/presentation/view/named_items/named_items_page.dart';
import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';

class DeserveToBeHappyView extends StatelessWidget {
  const DeserveToBeHappyView({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ColorsPalette.appAccentTextColor.withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.vDp),
        child: HomePagePadding(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(vertical: 20.vDp, horizontal: 16.hDp),
            child: Column(
              children: [
                Text(
                  "أنت تستحق أن تكون سعيداً!",
                  style: AppTextStyle.defaultAppTextStyle.copyWith(
                    fontSize: AppTextStyle.fontSizeLarge,
                    fontWeight: AppTextStyle.fontWeightBold,
                  ),
                ),
                SizedBox(height: 30.vDp),
                const DetailedItem(
                  title: "أدخل معلوماتك",
                  description: "لمساعدتنا في اختيار الاخصائي المناسب لك",
                ),
                const DetailedItemSpacer(),
                const DetailedItem(
                  title: "اختر الاشتراك المناسب",
                  description: "أسبوعي ، شهري ،كل 3 أشهر",
                ),
                const DetailedItemSpacer(),
                const DetailedItem(
                  title: "ادفع بأمان",
                  description: "طرق دفع آمنة",
                ),
                const DetailedItemSpacer(),
                const DetailedItem(
                  title: "نحن بخدمتك 24 ساعة",
                  description:
                      "سيتواصل فريق خدمة العملاء معك  لتحديد المختص الأنسب لحالتك",
                ),
                const DetailedItemSpacer(),
                const DetailedItem(
                  title: "ابدأ العلاج",
                  description: "حدد موعد مع المختص الخاص بك",
                ),
                SizedBox(height: 36.vDp),
                SizedBox(
                  width: 200.hDp,
                  child: DefaultButton(
                      label: "ابدا الان",
                      labelStyle: AppTextStyle.defaultAppTextStyle.copyWith(
                          fontSize: AppTextStyle.fontSizeMedium,
                          fontWeight: AppTextStyle.fontWeightBold,
                          color: Colors.white),
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(NamedItemsPage.routeName);
                      }),
                ),
                SizedBox(height: 18.vDp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailedItemSpacer extends StatelessWidget {
  const DetailedItemSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 18.vDp);
  }
}

class DetailedItem extends StatelessWidget {
  final String title;
  final String description;
  const DetailedItem(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45.hDp,
          width: 45.hDp,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green.withOpacity(0.2),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.hDp, vertical: 8.hDp),
          alignment: Alignment.center,
          child: Image.asset(
            ImagesAssets.imagePlaceHolder,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        SizedBox(width: 8.hDp),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: AppTextStyle.defaultAppTextStyle.copyWith(
                  fontSize: AppTextStyle.fontSizeRegular,
                  fontWeight: AppTextStyle.fontWeightMedium,
                  color: ColorsPalette.appAccentTextColor,
                  height: (1.1).vDp,
                ),
              ),
              SizedBox(height: 4.vDp),
              Text(
                description,
                style: AppTextStyle.defaultAppTextStyle.copyWith(
                  color: ColorsPalette.appTextColor,
                  fontSize: AppTextStyle.fontSizeSmall,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
