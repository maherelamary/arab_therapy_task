import 'package:arab_therapy_task/src/core/helper/failure_helper.dart';
import 'package:arab_therapy_task/src/core/object/no_params.dart';
import 'package:arab_therapy_task/src/features/domain/entity/sample_data_photo_entity.dart';
import 'package:arab_therapy_task/src/features/domain/usecase/get_sample_data_photos_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_named_items_bloc.freezed.dart';
part 'get_named_items_bloc_event.dart';
part 'get_named_items_bloc_state.dart';

@injectable
class GetNamedItemsBloc
    extends Bloc<GetNamedItemsBlocEvent, GetNamedItemsBlocState> {
  final GetSampleDataPhotosUseCase _getSampleDataPhotosUseCase;

  GetNamedItemsBloc(this._getSampleDataPhotosUseCase)
      : super(const GetNamedItemsBlocState.initial()) {
    on<GetNamedItemsBlocEvent>((event, emit) async {
      await event.when(perform: () async {
        emit(GetNamedItemsBlocState.loading());
        var result = await _getSampleDataPhotosUseCase(const NoParams());
        result.fold(
            (failure) => emit(GetNamedItemsBlocState.failed(
                  FailureHelper.getAppropriateFailureMessageFromFailure(
                      failure: failure),
                )),
            (r) => emit(GetNamedItemsBlocState.loaded(r)));
      });
    });
  }
}
