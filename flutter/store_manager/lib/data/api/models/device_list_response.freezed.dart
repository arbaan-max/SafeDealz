// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeviceListResponse _$DeviceListResponseFromJson(Map<String, dynamic> json) {
  return _DeviceListResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<Device> get data => throw _privateConstructorUsedError;

  /// Serializes this DeviceListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceListResponseCopyWith<DeviceListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceListResponseCopyWith<$Res> {
  factory $DeviceListResponseCopyWith(
    DeviceListResponse value,
    $Res Function(DeviceListResponse) then,
  ) = _$DeviceListResponseCopyWithImpl<$Res, DeviceListResponse>;
  @useResult
  $Res call({bool success, List<Device> data});
}

/// @nodoc
class _$DeviceListResponseCopyWithImpl<$Res, $Val extends DeviceListResponse>
    implements $DeviceListResponseCopyWith<$Res> {
  _$DeviceListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceListResponse
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
                      as List<Device>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeviceListResponseImplCopyWith<$Res>
    implements $DeviceListResponseCopyWith<$Res> {
  factory _$$DeviceListResponseImplCopyWith(
    _$DeviceListResponseImpl value,
    $Res Function(_$DeviceListResponseImpl) then,
  ) = __$$DeviceListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<Device> data});
}

/// @nodoc
class __$$DeviceListResponseImplCopyWithImpl<$Res>
    extends _$DeviceListResponseCopyWithImpl<$Res, _$DeviceListResponseImpl>
    implements _$$DeviceListResponseImplCopyWith<$Res> {
  __$$DeviceListResponseImplCopyWithImpl(
    _$DeviceListResponseImpl _value,
    $Res Function(_$DeviceListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeviceListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$DeviceListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<Device>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceListResponseImpl implements _DeviceListResponse {
  const _$DeviceListResponseImpl({
    required this.success,
    required final List<Device> data,
  }) : _data = data;

  factory _$DeviceListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceListResponseImplFromJson(json);

  @override
  final bool success;
  final List<Device> _data;
  @override
  List<Device> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DeviceListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceListResponseImpl &&
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

  /// Create a copy of DeviceListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceListResponseImplCopyWith<_$DeviceListResponseImpl> get copyWith =>
      __$$DeviceListResponseImplCopyWithImpl<_$DeviceListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceListResponseImplToJson(this);
  }
}

abstract class _DeviceListResponse implements DeviceListResponse {
  const factory _DeviceListResponse({
    required final bool success,
    required final List<Device> data,
  }) = _$DeviceListResponseImpl;

  factory _DeviceListResponse.fromJson(Map<String, dynamic> json) =
      _$DeviceListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<Device> get data;

  /// Create a copy of DeviceListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceListResponseImplCopyWith<_$DeviceListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
