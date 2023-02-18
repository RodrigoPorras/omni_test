import 'package:flutter_omni_test/data/models/photo.dart';
import 'package:flutter_omni_test/data/remote/networking/configuration/result.dart';
import 'package:flutter_omni_test/data/remote/providers/main_api_provider.dart';
import 'package:flutter_omni_test/data/repository/main/main_repository.dart';

class MainRepositoryImpl implements MainRepository {
  final MainApiProvider _userApiProvider;

  MainRepositoryImpl(this._userApiProvider);

  @override
  Future<Result<List<Photo>>> getPhotos({required int page, int? limit}) {
    return _userApiProvider.getPhotos(page: page,limit: limit);
  }
}
