import 'package:flutter_omni_test/data/models/photo.dart';
import 'package:flutter_omni_test/data/remote/networking/configuration/result.dart';

abstract class MainRepository {
  Future<Result<List<Photo>>> getPhotos({required int page, int? limit});
}
