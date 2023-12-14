import 'package:arab_therapy_task/src/features/presentation/view/home/component/home_page_padding.dart';
import 'package:arab_therapy_task/src/features/presentation/view/home/component/why_arab_therapy_item.dart';
import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';

class WhyArabTherapyView extends StatelessWidget {
  const WhyArabTherapyView({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePagePadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "لماذا عرب ثيرابي؟",
            style: AppTextStyle.defaultAppTextStyle.copyWith(
              fontSize: AppTextStyle.fontSizeLarge,
              fontWeight: AppTextStyle.fontWeightBold,
              color: ColorsPalette.appAccentTextColor,
            ),
          ),
          SizedBox(height: 25.vDp),
          SizedBox(
            height: 300.vDp,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, _) => SizedBox(width: 24.hDp),
              itemBuilder: (context, index) => index == 1
                  ? const WhyArabTherapyItem(
                      title: "سرية تامة",
                      content: "كافة المعلومات التي تشاركها معنا سواء ",
                    )
                  : const WhyArabTherapyItem(
                      title: "سرية تامة",
                      content:
                          "كافة المعلومات التي تشاركها معنا سواء في مواقع التواصل أو بينك وبين الأخصائي خلال وأثناء الجلسات تخضع لسرية تامة.",
                    ),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
