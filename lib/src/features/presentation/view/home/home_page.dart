import 'package:arab_therapy_task/src/features/presentation/view/home/component/deserve_to_be_happy_view.dart';
import 'package:arab_therapy_task/src/features/presentation/view/home/component/popular_questions_view.dart';
import 'package:arab_therapy_task/src/features/presentation/view/home/component/start_now_container.dart';
import 'package:arab_therapy_task/src/features/presentation/view/home/component/subscription_packages_view.dart';
import 'package:arab_therapy_task/src/features/presentation/view/home/component/why_arab_therapy_view.dart';
import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StartNowContainer(),
              SizedBox(height: 35.vDp),
              const WhyArabTherapyView(),
              SizedBox(height: 50.vDp),
              const SubscriptionPackagesView(),
              SizedBox(height: 20.vDp),
              const DeserveToBeHappyView(),
              SizedBox(height: 40.vDp),
              const PopularQuestionsView(),
              SizedBox(height: 50.vDp),
            ],
          ),
        ),
      ),
    );
  }
}
