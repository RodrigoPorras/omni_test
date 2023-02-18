import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_omni_test/data/models/photo.dart';
import 'package:flutter_omni_test/data/remote/networking/configuration/request_error.dart';
import 'package:flutter_omni_test/data/remote/networking/configuration/result.dart';
import 'package:flutter_omni_test/screens/home/home.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks/mocks.mocks.dart';

void main() {
  group('HomeBloc - ', () {
    late HomeBloc homeBloc;

    final mockMainReposityory = MockMainRepositoryImpl();

    setUpAll(() {
      GetIt.I.registerSingleton<Logger>(Logger());
    });

    setUp(() {
      homeBloc = HomeBloc(mockMainReposityory);
    });

    test(
      'When HomeBloc initializes HomeState is the first state',
      () {
        expect(homeBloc.state, isA<HomeState>());
      },
    );

    blocTest(
      'When HomeBloc StartedEvent starts and there is not an error, InitialState and PhotosLoadedState must be triggered',
      setUp: () {
        when(mockMainReposityory.getPhotos(page: 1, limit: 10))
            .thenAnswer((realInvocation) async => const Result.success([]));
      },
      build: () => homeBloc,
      act: (bloc) => homeBloc.add(StartedEvent()),
      expect: () => [isA<InitialState>(), isA<PhotosLoadedState>()],
    );

    blocTest(
      'When HomeBloc StartedEvent starts and there is an error, InitialState, ErrorState and PhotosLoadedState must be triggered',
      setUp: () {
        when(mockMainReposityory.getPhotos(page: 1, limit: 10)).thenAnswer(
          (realInvocation) async => Result.failure(
            RequestError.response(
              error: Response('error', 404),
            ),
            null,
          ),
        );
      },
      build: () => homeBloc,
      act: (bloc) => homeBloc.add(StartedEvent()),
      expect: () => [
        isA<InitialState>(),
        isA<ErrorState>(),
        isA<PhotosLoadedState>(),
      ],
    );

    blocTest(
      'When HomeBloc SearchNextPage starts and moreResults = true, state.photos.length + 1 >= resultsPerPage  and there is no serch error then LoadingNextPhotosState and PhotosLoadedState must be triggered',
      setUp: () {
        homeBloc.emit(HomeState(List.generate(
            11,
            (index) => const Photo(
                albumId: 1,
                id: 1,
                title: 'title',
                url: 'url',
                thumbnailUrl: 'thumbnailUrl'))));
        when(mockMainReposityory.getPhotos(page: 2, limit: 10))
            .thenAnswer((realInvocation) async => const Result.success([]));
      },
      build: () => homeBloc,
      act: (bloc) => homeBloc.add(SearchNextPage()),
      expect: () => [
        isA<LoadingNextPhotosState>(),
        isA<PhotosLoadedState>(),
      ],
    );

    blocTest(
      'When HomeBloc SearchNextPage starts and moreResults = true, state.photos.length + 1 >= resultsPerPage  and there is an error then LoadingNextPhotosState,ErrorState and PhotosLoadedState must be triggered',
      setUp: () {
        homeBloc.emit(HomeState(List.generate(
            11,
            (index) => const Photo(
                albumId: 1,
                id: 1,
                title: 'title',
                url: 'url',
                thumbnailUrl: 'thumbnailUrl'))));
        when(mockMainReposityory.getPhotos(page: 2, limit: 10)).thenAnswer(
          (realInvocation) async => Result.failure(
            RequestError.response(
              error: Response('error', 404),
            ),
            null,
          ),
        );
      },
      build: () => homeBloc,
      act: (bloc) => homeBloc.add(SearchNextPage()),
      expect: () => [
        isA<LoadingNextPhotosState>(),
        isA<ErrorState>(),
        isA<PhotosLoadedState>(),
      ],
    );
  });
}
