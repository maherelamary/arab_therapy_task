import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';

class HomePagePadding extends StatelessWidget {
  final Widget child;
  const HomePagePadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 18.hDp,
      ),
      child: child,
    );
  }
}
