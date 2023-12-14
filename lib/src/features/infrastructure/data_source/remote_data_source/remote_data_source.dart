import 'package:arab_therapy_task/src/features/infrastructure/model/sample_data_photo_model.dart';

abstract class RemoteDataSource {
  Future<List<SampleDataPhotoModel>> getSampleDataPhotos();
}
