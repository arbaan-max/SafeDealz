// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data10.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Data10 _$Data10FromJson(Map<String, dynamic> json) {
  return _Data10.fromJson(json);
}

/// @nodoc
mixin _$Data10 {
  String? get id => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this Data10 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data10
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Data10CopyWith<Data10> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Data10CopyWith<$Res> {
  factory $Data10CopyWith(Data10 value, $Res Function(Data10) then) =
      _$Data10CopyWithImpl<$Res, Data10>;
  @useResult
  $Res call({String? id, String? deviceId, String? status});
}

/// @nodoc
class _$Data10CopyWithImpl<$Res, $Val extends Data10>
    implements $Data10CopyWith<$Res> {
  _$Data10CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data10
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceId = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            deviceId: freezed == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Data10ImplCopyWith<$Res> implements $Data10CopyWith<$Res> {
  factory _$$Data10ImplCopyWith(
    _$Data10Impl value,
    $Res Function(_$Data10Impl) then,
  ) = __$$Data10ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? deviceId, String? status});
}

/// @nodoc
class __$$Data10ImplCopyWithImpl<$Res>
    extends _$Data10CopyWithImpl<$Res, _$Data10Impl>
    implements _$$Data10ImplCopyWith<$Res> {
  __$$Data10ImplCopyWithImpl(
    _$Data10Impl _value,
    $Res Function(_$Data10Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of Data10
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceId = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _$Data10Impl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        deviceId: freezed == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Data10Impl implements _Data10 {
  const _$Data10Impl({this.id, this.deviceId, this.status});

  factory _$Data10Impl.fromJson(Map<String, dynamic> json) =>
      _$$Data10ImplFromJson(json);

  @override
  final String? id;
  @override
  final String? deviceId;
  @override
  final String? status;

  @override
  String toString() {
    return 'Data10(id: $id, deviceId: $deviceId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data10Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, deviceId, status);

  /// Create a copy of Data10
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Data10ImplCopyWith<_$Data10Impl> get copyWith =>
      __$$Data10ImplCopyWithImpl<_$Data10Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Data10ImplToJson(this);
  }
}

abstract class _Data10 implements Data10 {
  const factory _Data10({
    final String? id,
    final String? deviceId,
    final String? status,
  }) = _$Data10Impl;

  factory _Data10.fromJson(Map<String, dynamic> json) = _$Data10Impl.fromJson;

  @override
  String? get id;
  @override
  String? get deviceId;
  @override
  String? get status;

  /// Create a copy of Data10
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Data10ImplCopyWith<_$Data10Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
