import 'package:arab_therapy_task/src/features/presentation/view/home/component/home_page_padding.dart';
import 'package:arab_therapy_task/src/features/presentation/view/home/component/subscription_package_item.dart';
import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';

class SubscriptionPackagesView extends StatelessWidget {
  const SubscriptionPackagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePagePadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "اختر الاشتراك المناسب لك",
            style: AppTextStyle.defaultAppTextStyle.copyWith(
              fontSize: AppTextStyle.fontSizeLarge,
              fontWeight: AppTextStyle.fontWeightBold,
              color: ColorsPalette.appAccentTextColor,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            primary: false,
            padding: EdgeInsets.symmetric(vertical: 22.vDp),
            itemBuilder: (context, index) => const SubscriptionPackageItem(),
            separatorBuilder: (context, _) => SizedBox(height: 18.vDp),
            itemCount: 2,
          ),
        ],
      ),
    );
  }
}
