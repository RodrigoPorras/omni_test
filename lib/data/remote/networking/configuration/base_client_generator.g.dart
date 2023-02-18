// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_client_generator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseClientGenerator _$$_BaseClientGeneratorFromJson(
        Map<String, dynamic> json) =>
    _$_BaseClientGenerator(
      path: json['path'] as String,
      method: $enumDecodeNullable(_$HttpMethodEnumMap, json['method']) ??
          HttpMethod.get,
      baseURL: json['baseURL'] as String?,
      body: json['body'] ?? const {},
      queryParameters: json['queryParameters'] as Map<String, dynamic>?,
      header: json['header'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_BaseClientGeneratorToJson(
        _$_BaseClientGenerator instance) =>
    <String, dynamic>{
      'path': instance.path,
      'method': _$HttpMethodEnumMap[instance.method]!,
      'baseURL': instance.baseURL,
      'body': instance.body,
      'queryParameters': instance.queryParameters,
      'header': instance.header,
    };

const _$HttpMethodEnumMap = {
  HttpMethod.post: 'post',
  HttpMethod.get: 'get',
  HttpMethod.put: 'put',
  HttpMethod.delete: 'delete',
};
