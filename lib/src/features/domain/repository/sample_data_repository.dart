import 'package:arab_therapy_task/src/core/object/failure/failure.dart';
import 'package:arab_therapy_task/src/features/domain/entity/sample_data_photo_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SampleDataRepository {
  Future<Either<Failure, List<SampleDataPhoto>>> getSampleDataPhotos();
}
