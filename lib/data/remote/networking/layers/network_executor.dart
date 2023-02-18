import 'package:flutter_omni_test/data/remote/networking/configuration/base_client_generator.dart';
import 'package:flutter_omni_test/data/remote/networking/configuration/network_options.dart';
import 'package:flutter_omni_test/data/remote/networking/configuration/request_error.dart';
import 'package:flutter_omni_test/data/remote/networking/configuration/result.dart';
import 'package:flutter_omni_test/data/remote/networking/layers/network_connectivity.dart';
import 'package:flutter_omni_test/data/remote/networking/layers/network_creator.dart';
import 'package:flutter_omni_test/data/remote/networking/layers/network_decoder.dart';
import 'package:flutter_omni_test/settings/config.dart';

class NetworkExecutor {
  final NetworkCreator _networkCreator;
  final NetworkDecoder _networkDecoder;
  final NetworkConnectivity _networkConnectivity;

  NetworkExecutor(
    this._networkCreator,
    this._networkDecoder,
    this._networkConnectivity,
  );

  Future<Result<K>> execute<T, K>({
    required BaseClientGenerator route,
    required dynamic Function(Map<String, dynamic> json) fromMap,
    dynamic Function(Map<String, dynamic> json)? fromJsonString,
    NetworkOptions? options,
  }) async {
    // Check Network Connectivity
    final isConnected = await _networkConnectivity.status;
    if (!isConnected) {
      return Result.failure(
        RequestError.connectivity(message: labels.no_internet),
        null,
      );
    } else {
      try {
        final response =
            await _networkCreator.request(route: route, options: options);

        if (response.statusCode != 200) {
          return Result.failure(
            RequestError.response(error: response),
            null,
          );
        }

        final data = _networkDecoder.decode<T, K>(
          response: response,
          fromMap: fromMap,
        );
        return Result.success(data);

        // TYPE ERROR
      } on TypeError catch (e, stackTrace) {
        return Result.failure(
          RequestError.decoding(error: e.toString()),
          stackTrace,
        );
      }
    }
  }
}
