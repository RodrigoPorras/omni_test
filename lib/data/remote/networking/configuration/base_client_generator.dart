import 'package:flutter_omni_test/extensions/http_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_client_generator.freezed.dart';
part 'base_client_generator.g.dart';

@freezed
class BaseClientGenerator with _$BaseClientGenerator {
  const factory BaseClientGenerator({
    required String path,
    @Default(HttpMethod.get) HttpMethod method,
    String? baseURL,
    @Default({}) dynamic body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
  }) = _BaseClientGenerator;

  factory BaseClientGenerator.fromJson(Map<String, dynamic> json) =>
      _$BaseClientGeneratorFromJson(json);
}
