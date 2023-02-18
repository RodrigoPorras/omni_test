// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_client_generator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseClientGenerator _$BaseClientGeneratorFromJson(Map<String, dynamic> json) {
  return _BaseClientGenerator.fromJson(json);
}

/// @nodoc
mixin _$BaseClientGenerator {
  String get path => throw _privateConstructorUsedError;
  HttpMethod get method => throw _privateConstructorUsedError;
  String? get baseURL => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;
  Map<String, dynamic>? get queryParameters =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get header => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseClientGeneratorCopyWith<BaseClientGenerator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseClientGeneratorCopyWith<$Res> {
  factory $BaseClientGeneratorCopyWith(
          BaseClientGenerator value, $Res Function(BaseClientGenerator) then) =
      _$BaseClientGeneratorCopyWithImpl<$Res>;
  $Res call(
      {String path,
      HttpMethod method,
      String? baseURL,
      dynamic body,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? header});
}

/// @nodoc
class _$BaseClientGeneratorCopyWithImpl<$Res>
    implements $BaseClientGeneratorCopyWith<$Res> {
  _$BaseClientGeneratorCopyWithImpl(this._value, this._then);

  final BaseClientGenerator _value;
  // ignore: unused_field
  final $Res Function(BaseClientGenerator) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? method = freezed,
    Object? baseURL = freezed,
    Object? body = freezed,
    Object? queryParameters = freezed,
    Object? header = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      baseURL: baseURL == freezed
          ? _value.baseURL
          : baseURL // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
      queryParameters: queryParameters == freezed
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$$_BaseClientGeneratorCopyWith<$Res>
    implements $BaseClientGeneratorCopyWith<$Res> {
  factory _$$_BaseClientGeneratorCopyWith(_$_BaseClientGenerator value,
          $Res Function(_$_BaseClientGenerator) then) =
      __$$_BaseClientGeneratorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String path,
      HttpMethod method,
      String? baseURL,
      dynamic body,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? header});
}

/// @nodoc
class __$$_BaseClientGeneratorCopyWithImpl<$Res>
    extends _$BaseClientGeneratorCopyWithImpl<$Res>
    implements _$$_BaseClientGeneratorCopyWith<$Res> {
  __$$_BaseClientGeneratorCopyWithImpl(_$_BaseClientGenerator _value,
      $Res Function(_$_BaseClientGenerator) _then)
      : super(_value, (v) => _then(v as _$_BaseClientGenerator));

  @override
  _$_BaseClientGenerator get _value => super._value as _$_BaseClientGenerator;

  @override
  $Res call({
    Object? path = freezed,
    Object? method = freezed,
    Object? baseURL = freezed,
    Object? body = freezed,
    Object? queryParameters = freezed,
    Object? header = freezed,
  }) {
    return _then(_$_BaseClientGenerator(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      baseURL: baseURL == freezed
          ? _value.baseURL
          : baseURL // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
      queryParameters: queryParameters == freezed
          ? _value._queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      header: header == freezed
          ? _value._header
          : header // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseClientGenerator implements _BaseClientGenerator {
  const _$_BaseClientGenerator(
      {required this.path,
      this.method = HttpMethod.get,
      this.baseURL,
      this.body = const {},
      final Map<String, dynamic>? queryParameters,
      final Map<String, dynamic>? header})
      : _queryParameters = queryParameters,
        _header = header;

  factory _$_BaseClientGenerator.fromJson(Map<String, dynamic> json) =>
      _$$_BaseClientGeneratorFromJson(json);

  @override
  final String path;
  @override
  @JsonKey()
  final HttpMethod method;
  @override
  final String? baseURL;
  @override
  @JsonKey()
  final dynamic body;
  final Map<String, dynamic>? _queryParameters;
  @override
  Map<String, dynamic>? get queryParameters {
    final value = _queryParameters;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _header;
  @override
  Map<String, dynamic>? get header {
    final value = _header;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'BaseClientGenerator(path: $path, method: $method, baseURL: $baseURL, body: $body, queryParameters: $queryParameters, header: $header)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseClientGenerator &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.baseURL, baseURL) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other._queryParameters, _queryParameters) &&
            const DeepCollectionEquality().equals(other._header, _header));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(baseURL),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(_queryParameters),
      const DeepCollectionEquality().hash(_header));

  @JsonKey(ignore: true)
  @override
  _$$_BaseClientGeneratorCopyWith<_$_BaseClientGenerator> get copyWith =>
      __$$_BaseClientGeneratorCopyWithImpl<_$_BaseClientGenerator>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseClientGeneratorToJson(
      this,
    );
  }
}

abstract class _BaseClientGenerator implements BaseClientGenerator {
  const factory _BaseClientGenerator(
      {required final String path,
      final HttpMethod method,
      final String? baseURL,
      final dynamic body,
      final Map<String, dynamic>? queryParameters,
      final Map<String, dynamic>? header}) = _$_BaseClientGenerator;

  factory _BaseClientGenerator.fromJson(Map<String, dynamic> json) =
      _$_BaseClientGenerator.fromJson;

  @override
  String get path;
  @override
  HttpMethod get method;
  @override
  String? get baseURL;
  @override
  dynamic get body;
  @override
  Map<String, dynamic>? get queryParameters;
  @override
  Map<String, dynamic>? get header;
  @override
  @JsonKey(ignore: true)
  _$$_BaseClientGeneratorCopyWith<_$_BaseClientGenerator> get copyWith =>
      throw _privateConstructorUsedError;
}
