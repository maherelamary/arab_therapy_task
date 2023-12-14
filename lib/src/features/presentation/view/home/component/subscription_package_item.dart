import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';

class SubscriptionPackageItem extends StatelessWidget {
  final String? label;
  const SubscriptionPackageItem({super.key, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(112, 112, 112, 0.24)),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(right: 18.hDp, top: 22.vDp, bottom: 26.vDp),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Image.asset(
                ImagesAssets.imagePlaceHolder,
                fit: BoxFit.fill,
                width: 50.hDp,
                height: 65.vDp,
              ),
              SizedBox(width: 8.hDp),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "حزمة الأمان",
                            style: AppTextStyle.defaultAppTextStyle.copyWith(
                              fontSize: AppTextStyle.fontSizeMedium,
                              fontWeight: AppTextStyle.fontWeightMedium,
                              height: 1.1.vDp,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        label != null
                            ? Container(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 24.hDp),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16.hDp),
                                      bottomRight: Radius.circular(16.hDp)),
                                  color: Colors.amber,
                                ),
                                child: Text(
                                  label!,
                                  style: AppTextStyle.defaultAppTextStyle
                                      .copyWith(
                                          color: Colors.white,
                                          fontSize:
                                              AppTextStyle.fontSizeMedium),
                                ),
                              )
                            : const SizedBox(height: 0.0, width: 0.0),
                      ],
                    ),
                    SizedBox(height: 2.vDp),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "",
                        style: AppTextStyle.defaultAppTextStyle.copyWith(
                          fontSize: AppTextStyle.fontSizeSmall,
                          height: 1.1.vDp,
                        ),
                        children: [
                          const TextSpan(
                            text: "وفر",
                          ),
                          TextSpan(
                            text: " 50% ",
                            style: AppTextStyle.defaultAppTextStyle.copyWith(
                              fontSize: AppTextStyle.fontSizeSmall,
                              fontWeight: AppTextStyle.fontWeightMedium,
                              height: 1.1.vDp,
                            ),
                          ),
                          const TextSpan(text: "لأول جلسة")
                        ],
                      ),
                    ),
                    SizedBox(height: 4.vDp),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "",
                        style: AppTextStyle.defaultAppTextStyle.copyWith(
                          fontSize: AppTextStyle.fontSizeLarge,
                          fontWeight: AppTextStyle.fontWeightBold,
                        ),
                        children: [
                          const TextSpan(
                            text: "29.99 ",
                          ),
                          TextSpan(
                            text: "\$",
                            style: AppTextStyle.defaultAppTextStyle.copyWith(
                              fontSize: AppTextStyle.fontSizeRegular,
                              fontWeight: AppTextStyle.fontWeightBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.vDp),
                    Text(
                      "لأول أسبوع ثم\$59.99اسبوعياً",
                      style: AppTextStyle.defaultAppTextStyle.copyWith(
                        fontSize: 12.hDp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.vDp),
            child: Divider(
              indent: 14.hDp,
              endIndent: 14.hDp,
              color: Colors.grey[400],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DetailedPackageInfoItem(
                text: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    text: "",
                    style: AppTextStyle.defaultAppTextStyle.copyWith(
                        fontSize: AppTextStyle.fontSizeRegular,
                        color: ColorsPalette.appAccentTextColor,
                        fontWeight: AppTextStyle.fontWeightBold,
                        height: (1.1).vDp),
                    children: [
                      const TextSpan(text: "4"),
                      const TextSpan(text: " "),
                      TextSpan(
                        text: "جلسات صوتية أو فيديو خلال شهر",
                        style: AppTextStyle.defaultAppTextStyle.copyWith(
                          fontSize: AppTextStyle.fontSizeRegular,
                          fontWeight: AppTextStyle.fontWeightRegular,
                        ),
                      ),
                      const TextSpan(text: " "),
                      const TextSpan(text: "(45 دقيقة لكل جلسة)"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12.vDp),
              DetailedPackageInfoItem(
                text: Text(
                  "رسائل لا محدودة مع الأخصائي النفسي طيلة فترة الاشتراك",
                  style: AppTextStyle.defaultAppTextStyle.copyWith(
                      fontSize: AppTextStyle.fontSizeRegular,
                      color: ColorsPalette.appAccentTextColor,
                      height: (1.1).vDp),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 12.vDp),
              DetailedPackageInfoItem(
                text: Text(
                  "يمكنك إلغاء اشتراكك في أي وقت تريد",
                  style: AppTextStyle.defaultAppTextStyle.copyWith(
                      fontSize: AppTextStyle.fontSizeRegular,
                      color: ColorsPalette.appAccentTextColor,
                      height: (1.1).vDp),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DetailedPackageInfoItem extends StatelessWidget {
  final Widget text;
  const DetailedPackageInfoItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 20.hDp,
          width: 20.hDp,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsPalette.appPrimaryColor.withOpacity(0.1),
          ),
          padding: EdgeInsets.all(1.hDp),
          alignment: Alignment.center,
          child: Icon(
            Icons.check,
            color: ColorsPalette.appPrimaryColor,
            size: 14.hDp,
          ),
        ),
        SizedBox(width: 4.hDp),
        Expanded(
          child: text,
        ),
      ],
    );
  }
}
