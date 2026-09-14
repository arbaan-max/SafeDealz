// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audit_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuditListResponse _$AuditListResponseFromJson(Map<String, dynamic> json) {
  return _AuditListResponse.fromJson(json);
}

/// @nodoc
mixin _$AuditListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<AuditEvent> get data => throw _privateConstructorUsedError;

  /// Serializes this AuditListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuditListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuditListResponseCopyWith<AuditListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditListResponseCopyWith<$Res> {
  factory $AuditListResponseCopyWith(
    AuditListResponse value,
    $Res Function(AuditListResponse) then,
  ) = _$AuditListResponseCopyWithImpl<$Res, AuditListResponse>;
  @useResult
  $Res call({bool success, List<AuditEvent> data});
}

/// @nodoc
class _$AuditListResponseCopyWithImpl<$Res, $Val extends AuditListResponse>
    implements $AuditListResponseCopyWith<$Res> {
  _$AuditListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuditListResponse
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
                      as List<AuditEvent>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuditListResponseImplCopyWith<$Res>
    implements $AuditListResponseCopyWith<$Res> {
  factory _$$AuditListResponseImplCopyWith(
    _$AuditListResponseImpl value,
    $Res Function(_$AuditListResponseImpl) then,
  ) = __$$AuditListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<AuditEvent> data});
}

/// @nodoc
class __$$AuditListResponseImplCopyWithImpl<$Res>
    extends _$AuditListResponseCopyWithImpl<$Res, _$AuditListResponseImpl>
    implements _$$AuditListResponseImplCopyWith<$Res> {
  __$$AuditListResponseImplCopyWithImpl(
    _$AuditListResponseImpl _value,
    $Res Function(_$AuditListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuditListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$AuditListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<AuditEvent>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuditListResponseImpl implements _AuditListResponse {
  const _$AuditListResponseImpl({
    required this.success,
    required final List<AuditEvent> data,
  }) : _data = data;

  factory _$AuditListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuditListResponseImplFromJson(json);

  @override
  final bool success;
  final List<AuditEvent> _data;
  @override
  List<AuditEvent> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AuditListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuditListResponseImpl &&
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

  /// Create a copy of AuditListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuditListResponseImplCopyWith<_$AuditListResponseImpl> get copyWith =>
      __$$AuditListResponseImplCopyWithImpl<_$AuditListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuditListResponseImplToJson(this);
  }
}

abstract class _AuditListResponse implements AuditListResponse {
  const factory _AuditListResponse({
    required final bool success,
    required final List<AuditEvent> data,
  }) = _$AuditListResponseImpl;

  factory _AuditListResponse.fromJson(Map<String, dynamic> json) =
      _$AuditListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<AuditEvent> get data;

  /// Create a copy of AuditListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuditListResponseImplCopyWith<_$AuditListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
