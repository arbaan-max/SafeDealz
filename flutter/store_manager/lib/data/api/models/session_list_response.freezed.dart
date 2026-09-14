// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SessionListResponse _$SessionListResponseFromJson(Map<String, dynamic> json) {
  return _SessionListResponse.fromJson(json);
}

/// @nodoc
mixin _$SessionListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<AccountSession> get data => throw _privateConstructorUsedError;

  /// Serializes this SessionListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionListResponseCopyWith<SessionListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionListResponseCopyWith<$Res> {
  factory $SessionListResponseCopyWith(
    SessionListResponse value,
    $Res Function(SessionListResponse) then,
  ) = _$SessionListResponseCopyWithImpl<$Res, SessionListResponse>;
  @useResult
  $Res call({bool success, List<AccountSession> data});
}

/// @nodoc
class _$SessionListResponseCopyWithImpl<$Res, $Val extends SessionListResponse>
    implements $SessionListResponseCopyWith<$Res> {
  _$SessionListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionListResponse
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
                      as List<AccountSession>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionListResponseImplCopyWith<$Res>
    implements $SessionListResponseCopyWith<$Res> {
  factory _$$SessionListResponseImplCopyWith(
    _$SessionListResponseImpl value,
    $Res Function(_$SessionListResponseImpl) then,
  ) = __$$SessionListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<AccountSession> data});
}

/// @nodoc
class __$$SessionListResponseImplCopyWithImpl<$Res>
    extends _$SessionListResponseCopyWithImpl<$Res, _$SessionListResponseImpl>
    implements _$$SessionListResponseImplCopyWith<$Res> {
  __$$SessionListResponseImplCopyWithImpl(
    _$SessionListResponseImpl _value,
    $Res Function(_$SessionListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$SessionListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<AccountSession>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionListResponseImpl implements _SessionListResponse {
  const _$SessionListResponseImpl({
    required this.success,
    required final List<AccountSession> data,
  }) : _data = data;

  factory _$SessionListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionListResponseImplFromJson(json);

  @override
  final bool success;
  final List<AccountSession> _data;
  @override
  List<AccountSession> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SessionListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionListResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of SessionListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionListResponseImplCopyWith<_$SessionListResponseImpl> get copyWith =>
      __$$SessionListResponseImplCopyWithImpl<_$SessionListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionListResponseImplToJson(this);
  }
}

abstract class _SessionListResponse implements SessionListResponse {
  const factory _SessionListResponse({
    required final bool success,
    required final List<AccountSession> data,
  }) = _$SessionListResponseImpl;

  factory _SessionListResponse.fromJson(Map<String, dynamic> json) =
      _$SessionListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<AccountSession> get data;

  /// Create a copy of SessionListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionListResponseImplCopyWith<_$SessionListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
