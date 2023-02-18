import 'package:flutter_omni_test/extensions/error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

part 'request_error.freezed.dart';

@freezed
class RequestError with _$RequestError implements Exception {
  const RequestError._() : super();

  const factory RequestError.response({required http.Response error}) =
      _ResponseError;
  const factory RequestError.decoding({String? error}) = _DecodingError;
  const factory RequestError.connectivity({String? message}) = _Connectivity;

  String get errorMessage {
    return when<String>(
      decoding: (error) => error ?? "",
      connectivity: (message) => message ?? "",
      response: (http.Response error) => error.parseError().detail ?? '',
    );
  }

  int? get statusCode {
    return when<int?>(
      response: (error) => error.statusCode,
      decoding: (error) => 0,
      connectivity: (message) => 0,
    );
  }
}
