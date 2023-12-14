import 'package:arab_therapy_task/src/core/helper/failure_helper.dart';
import 'package:arab_therapy_task/src/core/object/exception.dart';
import 'package:arab_therapy_task/src/core/object/failure/failure.dart';
import 'package:arab_therapy_task/src/features/domain/entity/sample_data_photo_entity.dart';
import 'package:arab_therapy_task/src/features/domain/repository/sample_data_repository.dart';
import 'package:arab_therapy_task/src/features/infrastructure/data_source/remote_data_source/remote_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SampleDataRepository)
class SampleDataRepoImpl implements SampleDataRepository {
  final RemoteDataSource _remoteDataSource;

  SampleDataRepoImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<SampleDataPhoto>>> getSampleDataPhotos() async {
    try {
      final result = await _remoteDataSource.getSampleDataPhotos();
      return Right(result);
    } on ServerException catch (ex) {
      return Left(Failure.serverFailure(ex.message));
    } on DioError catch (err) {
      return Left(FailureHelper.getAppropriateFailureFromDioError(err));
    } catch (err) {
      return const Left(Failure.unknownFailure());
    }
  }
}
