import 'package:flutter_omni_test/data/remote/networking/configuration/request_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success;
  const factory Result.failure(RequestError error, StackTrace? stackTrace) =
      Failure;
}
