import 'package:arab_therapy_task/src/features/presentation/view/home/component/home_page_padding.dart';
import 'package:arab_therapy_task/src/features/presentation/view/home/component/q_a_item.dart';
import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';

class PopularQuestionsView extends StatelessWidget {
  const PopularQuestionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePagePadding(
      child: Column(
        children: [
          Text(
            "أسئلة شائعة",
            style: AppTextStyle.defaultAppTextStyle.copyWith(
              fontSize: AppTextStyle.fontSizeLarge,
              fontWeight: AppTextStyle.fontWeightBold,
              color: ColorsPalette.appAccentTextColor,
            ),
          ),
          ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 22.vDp),
            primary: false,
            itemBuilder: (context, index) => const QAItem(
              question: "كم مدة الجلسات؟",
              answer: "عدد الجلسات في البداية تكون 20 جلسة",
            ),
            separatorBuilder: (context, index) => SizedBox(height: 18.vDp),
            itemCount: 3,
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
