import 'package:flutter_omni_test/data/models/photo.dart';
import 'package:flutter_omni_test/data/remote/networking/configuration/base_client_generator.dart';
import 'package:flutter_omni_test/data/remote/networking/configuration/result.dart';
import 'package:flutter_omni_test/data/remote/networking/layers/network_executor.dart';
import 'package:flutter_omni_test/data/remote/url_paths.dart';
import 'package:flutter_omni_test/extensions/http_method.dart';

class MainApiProvider {
  final NetworkExecutor _networkExecutor;

  MainApiProvider(this._networkExecutor);

  Future<Result<List<Photo>>> getPhotos({required int page, int? limit = 10}) {
    final path = UrlPaths.getPhotos();

    final route = BaseClientGenerator(
        baseURL: UrlPaths.host,
        path: path,
        method: HttpMethod.get,
        queryParameters: {
          '_page': page.toString(),
          '_limit': limit.toString(),
        });

    return _networkExecutor.execute<Photo, List<Photo>>(
      route: route,
      fromMap: Photo.fromJson,
    );
  }
}
