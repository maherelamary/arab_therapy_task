import 'package:arab_therapy_task/src/features/domain/entity/sample_data_photo_entity.dart';
import 'package:arab_therapy_task/src/features/presentation/view/presentation.dart';

class NamedItem extends StatelessWidget {
  final SampleDataPhoto item;
  const NamedItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (260.0).vDp,
      width: double.infinity,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: FadeInImage(
                image: NetworkImage(item.imageUrl),
                placeholder: const AssetImage(ImagesAssets.imagePlaceHolder),
                imageErrorBuilder: (_, __, ___) => Container(
                  color: Colors.grey[200],
                ),
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholderFit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    horizontal: 12.hDp, vertical: (6.75).vDp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(
                        fontSize: AppTextStyle.fontSizeMedium,
                        color: ColorsPalette.appAccentTextColor,
                      ),
                      maxLines: 2,
                      softWrap: true,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 4.vDp),
                    Expanded(
                      child: Text(
                        "By ${item.description}",
                        style: TextStyle(
                          fontSize: AppTextStyle.fontSizeRegular,
                          color: ColorsPalette.appTextColor,
                        ),
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.fade,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
