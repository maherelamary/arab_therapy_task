import 'package:arab_therapy_task/src/features/common/utils/sizes.dart';

extension SizesExtension on double {
  //horizontal dimensions
  double get hDp => Sizes.convertWidthToDP(this);
//vertical dimensions
  double get vDp => Sizes.convertHeightToDP(this);
}

extension SizesIntExtension on int {
  //horizontal dimensions
  double get hDp => Sizes.convertWidthToDP(this);
  //vertical dimensions
  double get vDp => Sizes.convertHeightToDP(this);
}
