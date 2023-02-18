// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_omni_test/data/models/photo.dart';
import 'package:flutter_omni_test/utils/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_omni_test/data/repository/main/main_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final MainRepository _mainRepository;

  final itemsBeforeToSearchNextPage = 1;
  final resultsPerPage = 10;
  int page = 1;
  bool moreResults = true;

  HomeBloc(
    this._mainRepository,
  ) : super(const HomeState([])) {
    on<StartedEvent>(_startedEventToState);
    on<SearchNextPage>(_searchNextPageEventToState);
    on<PullToRefresh>(_pullToRefreshEventToState);
  }

  _startedEventToState(
    StartedEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const InitialState(data: []));
    page = 1;

    moreResults = true;

    final photosResult = await _search(
      resultsPerPage: resultsPerPage,
      emit: emit,
    );

    emit(PhotosLoadedState(data: photosResult));
  }

  _searchNextPageEventToState(
    SearchNextPage event,
    Emitter<HomeState> emit,
  ) async {
    if (moreResults && state.photos.length + 1 >= resultsPerPage) {
      emit(LoadingNextPhotosState(data: state.photos));

      final photosResult = await _search(
        page: ++page,
        resultsPerPage: resultsPerPage,
        emit: emit,
      );

      final finalPhotosResult = [...state.photos, ...photosResult];

      emit(PhotosLoadedState(data: finalPhotosResult));
    }
  }

  _pullToRefreshEventToState(
    PullToRefresh event,
    Emitter<HomeState> emit,
  ) async {
    emit(const PullToRefreshState(data: []));
    moreResults = true;

    final photosResult = await _search(
      resultsPerPage: resultsPerPage,
      emit: emit,
    );

    emit(PhotosLoadedState(data: photosResult));
  }

  Future<List<Photo>> _search({
    int page = 1,
    required int resultsPerPage,
    required Emitter<HomeState> emit,
  }) async {
    final resultGetPhotos = await _mainRepository.getPhotos(
      page: page,
      limit: resultsPerPage,
    );

    return resultGetPhotos.when(
      success: (photos) {
        if (photos.isEmpty) moreResults = false;

        return photos;
      },
      failure: (error, stackTrace) {
        Log.to.e(error);
        Log.to.e(stackTrace);

        emit(ErrorState(
          errorMessage: error.errorMessage,
          data: state.photos,
        ));
        return [];
      },
    );
  }
}
