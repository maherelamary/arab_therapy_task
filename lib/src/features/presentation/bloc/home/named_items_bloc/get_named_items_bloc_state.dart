part of 'get_named_items_bloc.dart';

@freezed
class GetNamedItemsBlocState with _$GetNamedItemsBlocState {
  const factory GetNamedItemsBlocState.initial() = _Initial;
  const factory GetNamedItemsBlocState.loading() = _Loading;
  const factory GetNamedItemsBlocState.failed(String msg) = _Failed;
  const factory GetNamedItemsBlocState.loaded(List<SampleDataPhoto> photos) =
      _Loaded;
}
