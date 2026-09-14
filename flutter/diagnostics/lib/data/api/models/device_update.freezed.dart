// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeviceUpdate _$DeviceUpdateFromJson(Map<String, dynamic> json) {
  return _DeviceUpdate.fromJson(json);
}

/// @nodoc
mixin _$DeviceUpdate {
  String? get model => throw _privateConstructorUsedError;
  String? get imei1 => throw _privateConstructorUsedError;
  String? get imei2 => throw _privateConstructorUsedError;
  String? get storage => throw _privateConstructorUsedError;
  String? get ram => throw _privateConstructorUsedError;
  int? get batteryHealth => throw _privateConstructorUsedError;

  /// Serializes this DeviceUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceUpdateCopyWith<DeviceUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceUpdateCopyWith<$Res> {
  factory $DeviceUpdateCopyWith(
    DeviceUpdate value,
    $Res Function(DeviceUpdate) then,
  ) = _$DeviceUpdateCopyWithImpl<$Res, DeviceUpdate>;
  @useResult
  $Res call({
    String? model,
    String? imei1,
    String? imei2,
    String? storage,
    String? ram,
    int? batteryHealth,
  });
}

/// @nodoc
class _$DeviceUpdateCopyWithImpl<$Res, $Val extends DeviceUpdate>
    implements $DeviceUpdateCopyWith<$Res> {
  _$DeviceUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? imei1 = freezed,
    Object? imei2 = freezed,
    Object? storage = freezed,
    Object? ram = freezed,
    Object? batteryHealth = freezed,
  }) {
    return _then(
      _value.copyWith(
            model: freezed == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                      as String?,
            imei1: freezed == imei1
                ? _value.imei1
                : imei1 // ignore: cast_nullable_to_non_nullable
                      as String?,
            imei2: freezed == imei2
                ? _value.imei2
                : imei2 // ignore: cast_nullable_to_non_nullable
                      as String?,
            storage: freezed == storage
                ? _value.storage
                : storage // ignore: cast_nullable_to_non_nullable
                      as String?,
            ram: freezed == ram
                ? _value.ram
                : ram // ignore: cast_nullable_to_non_nullable
                      as String?,
            batteryHealth: freezed == batteryHealth
                ? _value.batteryHealth
                : batteryHealth // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeviceUpdateImplCopyWith<$Res>
    implements $DeviceUpdateCopyWith<$Res> {
  factory _$$DeviceUpdateImplCopyWith(
    _$DeviceUpdateImpl value,
    $Res Function(_$DeviceUpdateImpl) then,
  ) = __$$DeviceUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? model,
    String? imei1,
    String? imei2,
    String? storage,
    String? ram,
    int? batteryHealth,
  });
}

/// @nodoc
class __$$DeviceUpdateImplCopyWithImpl<$Res>
    extends _$DeviceUpdateCopyWithImpl<$Res, _$DeviceUpdateImpl>
    implements _$$DeviceUpdateImplCopyWith<$Res> {
  __$$DeviceUpdateImplCopyWithImpl(
    _$DeviceUpdateImpl _value,
    $Res Function(_$DeviceUpdateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeviceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? imei1 = freezed,
    Object? imei2 = freezed,
    Object? storage = freezed,
    Object? ram = freezed,
    Object? batteryHealth = freezed,
  }) {
    return _then(
      _$DeviceUpdateImpl(
        model: freezed == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as String?,
        imei1: freezed == imei1
            ? _value.imei1
            : imei1 // ignore: cast_nullable_to_non_nullable
                  as String?,
        imei2: freezed == imei2
            ? _value.imei2
            : imei2 // ignore: cast_nullable_to_non_nullable
                  as String?,
        storage: freezed == storage
            ? _value.storage
            : storage // ignore: cast_nullable_to_non_nullable
                  as String?,
        ram: freezed == ram
            ? _value.ram
            : ram // ignore: cast_nullable_to_non_nullable
                  as String?,
        batteryHealth: freezed == batteryHealth
            ? _value.batteryHealth
            : batteryHealth // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceUpdateImpl implements _DeviceUpdate {
  const _$DeviceUpdateImpl({
    this.model,
    this.imei1,
    this.imei2,
    this.storage,
    this.ram,
    this.batteryHealth,
  });

  factory _$DeviceUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceUpdateImplFromJson(json);

  @override
  final String? model;
  @override
  final String? imei1;
  @override
  final String? imei2;
  @override
  final String? storage;
  @override
  final String? ram;
  @override
  final int? batteryHealth;

  @override
  String toString() {
    return 'DeviceUpdate(model: $model, imei1: $imei1, imei2: $imei2, storage: $storage, ram: $ram, batteryHealth: $batteryHealth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceUpdateImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.imei1, imei1) || other.imei1 == imei1) &&
            (identical(other.imei2, imei2) || other.imei2 == imei2) &&
            (identical(other.storage, storage) || other.storage == storage) &&
            (identical(other.ram, ram) || other.ram == ram) &&
            (identical(other.batteryHealth, batteryHealth) ||
                other.batteryHealth == batteryHealth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    model,
    imei1,
    imei2,
    storage,
    ram,
    batteryHealth,
  );

  /// Create a copy of DeviceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceUpdateImplCopyWith<_$DeviceUpdateImpl> get copyWith =>
      __$$DeviceUpdateImplCopyWithImpl<_$DeviceUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceUpdateImplToJson(this);
  }
}

abstract class _DeviceUpdate implements DeviceUpdate {
  const factory _DeviceUpdate({
    final String? model,
    final String? imei1,
    final String? imei2,
    final String? storage,
    final String? ram,
    final int? batteryHealth,
  }) = _$DeviceUpdateImpl;

  factory _DeviceUpdate.fromJson(Map<String, dynamic> json) =
      _$DeviceUpdateImpl.fromJson;

  @override
  String? get model;
  @override
  String? get imei1;
  @override
  String? get imei2;
  @override
  String? get storage;
  @override
  String? get ram;
  @override
  int? get batteryHealth;

  /// Create a copy of DeviceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceUpdateImplCopyWith<_$DeviceUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
