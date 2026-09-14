// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeviceResponse _$DeviceResponseFromJson(Map<String, dynamic> json) {
  return _DeviceResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceResponse {
  bool get success => throw _privateConstructorUsedError;
  Device get data => throw _privateConstructorUsedError;

  /// Serializes this DeviceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceResponseCopyWith<DeviceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceResponseCopyWith<$Res> {
  factory $DeviceResponseCopyWith(
    DeviceResponse value,
    $Res Function(DeviceResponse) then,
  ) = _$DeviceResponseCopyWithImpl<$Res, DeviceResponse>;
  @useResult
  $Res call({bool success, Device data});

  $DeviceCopyWith<$Res> get data;
}

/// @nodoc
class _$DeviceResponseCopyWithImpl<$Res, $Val extends DeviceResponse>
    implements $DeviceResponseCopyWith<$Res> {
  _$DeviceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceResponse
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
                      as Device,
          )
          as $Val,
    );
  }

  /// Create a copy of DeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceCopyWith<$Res> get data {
    return $DeviceCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceResponseImplCopyWith<$Res>
    implements $DeviceResponseCopyWith<$Res> {
  factory _$$DeviceResponseImplCopyWith(
    _$DeviceResponseImpl value,
    $Res Function(_$DeviceResponseImpl) then,
  ) = __$$DeviceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Device data});

  @override
  $DeviceCopyWith<$Res> get data;
}

/// @nodoc
class __$$DeviceResponseImplCopyWithImpl<$Res>
    extends _$DeviceResponseCopyWithImpl<$Res, _$DeviceResponseImpl>
    implements _$$DeviceResponseImplCopyWith<$Res> {
  __$$DeviceResponseImplCopyWithImpl(
    _$DeviceResponseImpl _value,
    $Res Function(_$DeviceResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$DeviceResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Device,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceResponseImpl implements _DeviceResponse {
  const _$DeviceResponseImpl({required this.success, required this.data});

  factory _$DeviceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Device data;

  @override
  String toString() {
    return 'DeviceResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of DeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceResponseImplCopyWith<_$DeviceResponseImpl> get copyWith =>
      __$$DeviceResponseImplCopyWithImpl<_$DeviceResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceResponseImplToJson(this);
  }
}

abstract class _DeviceResponse implements DeviceResponse {
  const factory _DeviceResponse({
    required final bool success,
    required final Device data,
  }) = _$DeviceResponseImpl;

  factory _DeviceResponse.fromJson(Map<String, dynamic> json) =
      _$DeviceResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Device get data;

  /// Create a copy of DeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceResponseImplCopyWith<_$DeviceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
