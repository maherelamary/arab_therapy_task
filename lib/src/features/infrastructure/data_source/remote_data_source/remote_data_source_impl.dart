import 'package:arab_therapy_task/src/core/app_config.dart';
import 'package:arab_therapy_task/src/core/object/exception.dart';
import 'package:arab_therapy_task/src/features/infrastructure/data_source/core/api_list.dart';
import 'package:arab_therapy_task/src/features/infrastructure/data_source/core/dio_client.dart';
import 'package:arab_therapy_task/src/features/infrastructure/data_source/remote_data_source/remote_data_source.dart';
import 'package:arab_therapy_task/src/features/infrastructure/model/sample_data_photo_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RemoteDataSource)
class ArticlesRemoteDataSourceImpl implements RemoteDataSource {
  final DioClient _client;
  ArticlesRemoteDataSourceImpl(this._client);

  @override
  Future<List<SampleDataPhotoModel>> getSampleDataPhotos() async {
    final response = await _client.getRequest(ApiList.getSampleDataPhotos);
    final json = response.data;

    if (json["success"] == AppConfiguration.successStatusCode) {
      final response = List<SampleDataPhotoModel>.from((json['photos'] as List)
          .map((e) => SampleDataPhotoModel.fromJson(e))
          .toList());
      return response;
    }

    throw ServerException(message: json["message"]);
  }
}
