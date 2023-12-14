import 'package:arab_therapy_task/src/core/object/failure/failure.dart';
import 'package:arab_therapy_task/src/core/object/no_params.dart';
import 'package:arab_therapy_task/src/core/object/usecase.dart';
import 'package:arab_therapy_task/src/features/domain/entity/sample_data_photo_entity.dart';
import 'package:arab_therapy_task/src/features/domain/repository/sample_data_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSampleDataPhotosUseCase
    implements UseCase<Either<Failure, List<SampleDataPhoto>>, NoParams> {
  final SampleDataRepository _repository;
  GetSampleDataPhotosUseCase(this._repository);

  @override
  Future<Either<Failure, List<SampleDataPhoto>>> call(NoParams params) {
    return _repository.getSampleDataPhotos();
  }
}
