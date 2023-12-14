// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/domain/repository/sample_data_repository.dart' as _i6;
import '../../features/domain/usecase/get_sample_data_photos_usecase.dart'
    as _i8;
import '../../features/infrastructure/data_source/core/dio_client.dart' as _i3;
import '../../features/infrastructure/data_source/remote_data_source/remote_data_source.dart'
    as _i4;
import '../../features/infrastructure/data_source/remote_data_source/remote_data_source_impl.dart'
    as _i5;
import '../../features/infrastructure/repository/sample_data_repo_impl.dart'
    as _i7;
import '../../features/presentation/bloc/home/named_items_bloc/get_named_items_bloc.dart'
    as _i9;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.DioClient>(() => _i3.DioClient());
  gh.lazySingleton<_i4.RemoteDataSource>(
      () => _i5.ArticlesRemoteDataSourceImpl(gh<_i3.DioClient>()));
  gh.lazySingleton<_i6.SampleDataRepository>(
      () => _i7.SampleDataRepoImpl(gh<_i4.RemoteDataSource>()));
  gh.factory<_i8.GetSampleDataPhotosUseCase>(
      () => _i8.GetSampleDataPhotosUseCase(gh<_i6.SampleDataRepository>()));
  gh.factory<_i9.GetNamedItemsBloc>(
      () => _i9.GetNamedItemsBloc(gh<_i8.GetSampleDataPhotosUseCase>()));
  return getIt;
}
