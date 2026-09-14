// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_revoke_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SessionRevokeResponse _$SessionRevokeResponseFromJson(
  Map<String, dynamic> json,
) {
  return _SessionRevokeResponse.fromJson(json);
}

/// @nodoc
mixin _$SessionRevokeResponse {
  bool get success => throw _privateConstructorUsedError;
  SessionRevoke get data => throw _privateConstructorUsedError;

  /// Serializes this SessionRevokeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionRevokeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionRevokeResponseCopyWith<SessionRevokeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionRevokeResponseCopyWith<$Res> {
  factory $SessionRevokeResponseCopyWith(
    SessionRevokeResponse value,
    $Res Function(SessionRevokeResponse) then,
  ) = _$SessionRevokeResponseCopyWithImpl<$Res, SessionRevokeResponse>;
  @useResult
  $Res call({bool success, SessionRevoke data});

  $SessionRevokeCopyWith<$Res> get data;
}

/// @nodoc
class _$SessionRevokeResponseCopyWithImpl<
  $Res,
  $Val extends SessionRevokeResponse
>
    implements $SessionRevokeResponseCopyWith<$Res> {
  _$SessionRevokeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionRevokeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as SessionRevoke,
          )
          as $Val,
    );
  }

  /// Create a copy of SessionRevokeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionRevokeCopyWith<$Res> get data {
    return $SessionRevokeCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionRevokeResponseImplCopyWith<$Res>
    implements $SessionRevokeResponseCopyWith<$Res> {
  factory _$$SessionRevokeResponseImplCopyWith(
    _$SessionRevokeResponseImpl value,
    $Res Function(_$SessionRevokeResponseImpl) then,
  ) = __$$SessionRevokeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, SessionRevoke data});

  @override
  $SessionRevokeCopyWith<$Res> get data;
}

/// @nodoc
class __$$SessionRevokeResponseImplCopyWithImpl<$Res>
    extends
        _$SessionRevokeResponseCopyWithImpl<$Res, _$SessionRevokeResponseImpl>
    implements _$$SessionRevokeResponseImplCopyWith<$Res> {
  __$$SessionRevokeResponseImplCopyWithImpl(
    _$SessionRevokeResponseImpl _value,
    $Res Function(_$SessionRevokeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionRevokeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$SessionRevokeResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as SessionRevoke,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionRevokeResponseImpl implements _SessionRevokeResponse {
  const _$SessionRevokeResponseImpl({
    required this.success,
    required this.data,
  });

  factory _$SessionRevokeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionRevokeResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final SessionRevoke data;

  @override
  String toString() {
    return 'SessionRevokeResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionRevokeResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of SessionRevokeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionRevokeResponseImplCopyWith<_$SessionRevokeResponseImpl>
  get copyWith =>
      __$$SessionRevokeResponseImplCopyWithImpl<_$SessionRevokeResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionRevokeResponseImplToJson(this);
  }
}

abstract class _SessionRevokeResponse implements SessionRevokeResponse {
  const factory _SessionRevokeResponse({
    required final bool success,
    required final SessionRevoke data,
  }) = _$SessionRevokeResponseImpl;

  factory _SessionRevokeResponse.fromJson(Map<String, dynamic> json) =
      _$SessionRevokeResponseImpl.fromJson;

  @override
  bool get success;
  @override
  SessionRevoke get data;

  /// Create a copy of SessionRevokeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionRevokeResponseImplCopyWith<_$SessionRevokeResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
