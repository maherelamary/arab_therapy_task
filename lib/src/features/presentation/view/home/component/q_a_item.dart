import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';

class QAItem extends StatefulWidget {
  final String question;
  final String answer;

  const QAItem({Key? key, required this.question, required this.answer})
      : super(key: key);

  @override
  State<QAItem> createState() => _QAItemState();
}

class _QAItemState extends State<QAItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(4.hDp),
      ),
      collapsedShape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(4.hDp),
      ),
      backgroundColor: Colors.grey[200],
      collapsedBackgroundColor:
          ColorsPalette.appAccentTextColor.withOpacity(0.1),
      onExpansionChanged: (val) {
        setState(() {
          _isExpanded = val;
        });
      },
      trailing: Icon(
        !_isExpanded
            ? Icons.keyboard_arrow_down_rounded
            : Icons.keyboard_arrow_up_rounded,
        color: Colors.green[800],
        size: (26.0).hDp,
      ),
      title: Text(
        widget.question,
        style: AppTextStyle.defaultAppTextStyle.copyWith(
          fontSize: AppTextStyle.fontSizeMedium,
          height: (1.25).vDp,
        ),
      ),
      childrenPadding:
          EdgeInsets.symmetric(horizontal: (12.0).hDp, vertical: 4.vDp),
      children: [
        Row(
          children: [
            Text(
              widget.answer,
              style: AppTextStyle.defaultAppTextStyle.copyWith(
                color: ColorsPalette.appAccentTextColor,
                fontSize: AppTextStyle.fontSizeRegular,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ],
    );
  }
}
