// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(http.Response error) response,
    required TResult Function(String? error) decoding,
    required TResult Function(String? message) connectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(http.Response error)? response,
    TResult Function(String? error)? decoding,
    TResult Function(String? message)? connectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(http.Response error)? response,
    TResult Function(String? error)? decoding,
    TResult Function(String? message)? connectivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) response,
    required TResult Function(_DecodingError value) decoding,
    required TResult Function(_Connectivity value) connectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResponseError value)? response,
    TResult Function(_DecodingError value)? decoding,
    TResult Function(_Connectivity value)? connectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? response,
    TResult Function(_DecodingError value)? decoding,
    TResult Function(_Connectivity value)? connectivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestErrorCopyWith<$Res> {
  factory $RequestErrorCopyWith(
          RequestError value, $Res Function(RequestError) then) =
      _$RequestErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestErrorCopyWithImpl<$Res> implements $RequestErrorCopyWith<$Res> {
  _$RequestErrorCopyWithImpl(this._value, this._then);

  final RequestError _value;
  // ignore: unused_field
  final $Res Function(RequestError) _then;
}

/// @nodoc
abstract class _$$_ResponseErrorCopyWith<$Res> {
  factory _$$_ResponseErrorCopyWith(
          _$_ResponseError value, $Res Function(_$_ResponseError) then) =
      __$$_ResponseErrorCopyWithImpl<$Res>;
  $Res call({http.Response error});
}

/// @nodoc
class __$$_ResponseErrorCopyWithImpl<$Res>
    extends _$RequestErrorCopyWithImpl<$Res>
    implements _$$_ResponseErrorCopyWith<$Res> {
  __$$_ResponseErrorCopyWithImpl(
      _$_ResponseError _value, $Res Function(_$_ResponseError) _then)
      : super(_value, (v) => _then(v as _$_ResponseError));

  @override
  _$_ResponseError get _value => super._value as _$_ResponseError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_ResponseError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as http.Response,
    ));
  }
}

/// @nodoc

class _$_ResponseError extends _ResponseError {
  const _$_ResponseError({required this.error}) : super._();

  @override
  final http.Response error;

  @override
  String toString() {
    return 'RequestError.response(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseErrorCopyWith<_$_ResponseError> get copyWith =>
      __$$_ResponseErrorCopyWithImpl<_$_ResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(http.Response error) response,
    required TResult Function(String? error) decoding,
    required TResult Function(String? message) connectivity,
  }) {
    return response(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(http.Response error)? response,
    TResult Function(String? error)? decoding,
    TResult Function(String? message)? connectivity,
  }) {
    return response?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(http.Response error)? response,
    TResult Function(String? error)? decoding,
    TResult Function(String? message)? connectivity,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) response,
    required TResult Function(_DecodingError value) decoding,
    required TResult Function(_Connectivity value) connectivity,
  }) {
    return response(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResponseError value)? response,
    TResult Function(_DecodingError value)? decoding,
    TResult Function(_Connectivity value)? connectivity,
  }) {
    return response?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? response,
    TResult Function(_DecodingError value)? decoding,
    TResult Function(_Connectivity value)? connectivity,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(this);
    }
    return orElse();
  }
}

abstract class _ResponseError extends RequestError {
  const factory _ResponseError({required final http.Response error}) =
      _$_ResponseError;
  const _ResponseError._() : super._();

  http.Response get error;
  @JsonKey(ignore: true)
  _$$_ResponseErrorCopyWith<_$_ResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DecodingErrorCopyWith<$Res> {
  factory _$$_DecodingErrorCopyWith(
          _$_DecodingError value, $Res Function(_$_DecodingError) then) =
      __$$_DecodingErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$$_DecodingErrorCopyWithImpl<$Res>
    extends _$RequestErrorCopyWithImpl<$Res>
    implements _$$_DecodingErrorCopyWith<$Res> {
  __$$_DecodingErrorCopyWithImpl(
      _$_DecodingError _value, $Res Function(_$_DecodingError) _then)
      : super(_value, (v) => _then(v as _$_DecodingError));

  @override
  _$_DecodingError get _value => super._value as _$_DecodingError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_DecodingError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DecodingError extends _DecodingError {
  const _$_DecodingError({this.error}) : super._();

  @override
  final String? error;

  @override
  String toString() {
    return 'RequestError.decoding(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecodingError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_DecodingErrorCopyWith<_$_DecodingError> get copyWith =>
      __$$_DecodingErrorCopyWithImpl<_$_DecodingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(http.Response error) response,
    required TResult Function(String? error) decoding,
    required TResult Function(String? message) connectivity,
  }) {
    return decoding(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(http.Response error)? response,
    TResult Function(String? error)? decoding,
    TResult Function(String? message)? connectivity,
  }) {
    return decoding?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(http.Response error)? response,
    TResult Function(String? error)? decoding,
    TResult Function(String? message)? connectivity,
    required TResult orElse(),
  }) {
    if (decoding != null) {
      return decoding(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) response,
    required TResult Function(_DecodingError value) decoding,
    required TResult Function(_Connectivity value) connectivity,
  }) {
    return decoding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResponseError value)? response,
    TResult Function(_DecodingError value)? decoding,
    TResult Function(_Connectivity value)? connectivity,
  }) {
    return decoding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? response,
    TResult Function(_DecodingError value)? decoding,
    TResult Function(_Connectivity value)? connectivity,
    required TResult orElse(),
  }) {
    if (decoding != null) {
      return decoding(this);
    }
    return orElse();
  }
}

abstract class _DecodingError extends RequestError {
  const factory _DecodingError({final String? error}) = _$_DecodingError;
  const _DecodingError._() : super._();

  String? get error;
  @JsonKey(ignore: true)
  _$$_DecodingErrorCopyWith<_$_DecodingError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConnectivityCopyWith<$Res> {
  factory _$$_ConnectivityCopyWith(
          _$_Connectivity value, $Res Function(_$_Connectivity) then) =
      __$$_ConnectivityCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$_ConnectivityCopyWithImpl<$Res>
    extends _$RequestErrorCopyWithImpl<$Res>
    implements _$$_ConnectivityCopyWith<$Res> {
  __$$_ConnectivityCopyWithImpl(
      _$_Connectivity _value, $Res Function(_$_Connectivity) _then)
      : super(_value, (v) => _then(v as _$_Connectivity));

  @override
  _$_Connectivity get _value => super._value as _$_Connectivity;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Connectivity(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Connectivity extends _Connectivity {
  const _$_Connectivity({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'RequestError.connectivity(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Connectivity &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ConnectivityCopyWith<_$_Connectivity> get copyWith =>
      __$$_ConnectivityCopyWithImpl<_$_Connectivity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(http.Response error) response,
    required TResult Function(String? error) decoding,
    required TResult Function(String? message) connectivity,
  }) {
    return connectivity(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(http.Response error)? response,
    TResult Function(String? error)? decoding,
    TResult Function(String? message)? connectivity,
  }) {
    return connectivity?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(http.Response error)? response,
    TResult Function(String? error)? decoding,
    TResult Function(String? message)? connectivity,
    required TResult orElse(),
  }) {
    if (connectivity != null) {
      return connectivity(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseError value) response,
    required TResult Function(_DecodingError value) decoding,
    required TResult Function(_Connectivity value) connectivity,
  }) {
    return connectivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResponseError value)? response,
    TResult Function(_DecodingError value)? decoding,
    TResult Function(_Connectivity value)? connectivity,
  }) {
    return connectivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseError value)? response,
    TResult Function(_DecodingError value)? decoding,
    TResult Function(_Connectivity value)? connectivity,
    required TResult orElse(),
  }) {
    if (connectivity != null) {
      return connectivity(this);
    }
    return orElse();
  }
}

abstract class _Connectivity extends RequestError {
  const factory _Connectivity({final String? message}) = _$_Connectivity;
  const _Connectivity._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_ConnectivityCopyWith<_$_Connectivity> get copyWith =>
      throw _privateConstructorUsedError;
}
