// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchased_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PurchasedDevice _$PurchasedDeviceFromJson(Map<String, dynamic> json) {
  return _PurchasedDevice.fromJson(json);
}

/// @nodoc
mixin _$PurchasedDevice {
  PurchasedDevicePlatform? get platform => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get storage => throw _privateConstructorUsedError;
  String? get ram => throw _privateConstructorUsedError;
  String? get imei1 => throw _privateConstructorUsedError;
  String? get imei2 => throw _privateConstructorUsedError;

  /// Serializes this PurchasedDevice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurchasedDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurchasedDeviceCopyWith<PurchasedDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasedDeviceCopyWith<$Res> {
  factory $PurchasedDeviceCopyWith(
    PurchasedDevice value,
    $Res Function(PurchasedDevice) then,
  ) = _$PurchasedDeviceCopyWithImpl<$Res, PurchasedDevice>;
  @useResult
  $Res call({
    PurchasedDevicePlatform? platform,
    String? model,
    String? storage,
    String? ram,
    String? imei1,
    String? imei2,
  });
}

/// @nodoc
class _$PurchasedDeviceCopyWithImpl<$Res, $Val extends PurchasedDevice>
    implements $PurchasedDeviceCopyWith<$Res> {
  _$PurchasedDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchasedDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = freezed,
    Object? model = freezed,
    Object? storage = freezed,
    Object? ram = freezed,
    Object? imei1 = freezed,
    Object? imei2 = freezed,
  }) {
    return _then(
      _value.copyWith(
            platform: freezed == platform
                ? _value.platform
                : platform // ignore: cast_nullable_to_non_nullable
                      as PurchasedDevicePlatform?,
            model: freezed == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                      as String?,
            storage: freezed == storage
                ? _value.storage
                : storage // ignore: cast_nullable_to_non_nullable
                      as String?,
            ram: freezed == ram
                ? _value.ram
                : ram // ignore: cast_nullable_to_non_nullable
                      as String?,
            imei1: freezed == imei1
                ? _value.imei1
                : imei1 // ignore: cast_nullable_to_non_nullable
                      as String?,
            imei2: freezed == imei2
                ? _value.imei2
                : imei2 // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PurchasedDeviceImplCopyWith<$Res>
    implements $PurchasedDeviceCopyWith<$Res> {
  factory _$$PurchasedDeviceImplCopyWith(
    _$PurchasedDeviceImpl value,
    $Res Function(_$PurchasedDeviceImpl) then,
  ) = __$$PurchasedDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    PurchasedDevicePlatform? platform,
    String? model,
    String? storage,
    String? ram,
    String? imei1,
    String? imei2,
  });
}

/// @nodoc
class __$$PurchasedDeviceImplCopyWithImpl<$Res>
    extends _$PurchasedDeviceCopyWithImpl<$Res, _$PurchasedDeviceImpl>
    implements _$$PurchasedDeviceImplCopyWith<$Res> {
  __$$PurchasedDeviceImplCopyWithImpl(
    _$PurchasedDeviceImpl _value,
    $Res Function(_$PurchasedDeviceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchasedDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = freezed,
    Object? model = freezed,
    Object? storage = freezed,
    Object? ram = freezed,
    Object? imei1 = freezed,
    Object? imei2 = freezed,
  }) {
    return _then(
      _$PurchasedDeviceImpl(
        platform: freezed == platform
            ? _value.platform
            : platform // ignore: cast_nullable_to_non_nullable
                  as PurchasedDevicePlatform?,
        model: freezed == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as String?,
        storage: freezed == storage
            ? _value.storage
            : storage // ignore: cast_nullable_to_non_nullable
                  as String?,
        ram: freezed == ram
            ? _value.ram
            : ram // ignore: cast_nullable_to_non_nullable
                  as String?,
        imei1: freezed == imei1
            ? _value.imei1
            : imei1 // ignore: cast_nullable_to_non_nullable
                  as String?,
        imei2: freezed == imei2
            ? _value.imei2
            : imei2 // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchasedDeviceImpl implements _PurchasedDevice {
  const _$PurchasedDeviceImpl({
    this.platform,
    this.model,
    this.storage,
    this.ram,
    this.imei1,
    this.imei2,
  });

  factory _$PurchasedDeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchasedDeviceImplFromJson(json);

  @override
  final PurchasedDevicePlatform? platform;
  @override
  final String? model;
  @override
  final String? storage;
  @override
  final String? ram;
  @override
  final String? imei1;
  @override
  final String? imei2;

  @override
  String toString() {
    return 'PurchasedDevice(platform: $platform, model: $model, storage: $storage, ram: $ram, imei1: $imei1, imei2: $imei2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchasedDeviceImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.storage, storage) || other.storage == storage) &&
            (identical(other.ram, ram) || other.ram == ram) &&
            (identical(other.imei1, imei1) || other.imei1 == imei1) &&
            (identical(other.imei2, imei2) || other.imei2 == imei2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, platform, model, storage, ram, imei1, imei2);

  /// Create a copy of PurchasedDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchasedDeviceImplCopyWith<_$PurchasedDeviceImpl> get copyWith =>
      __$$PurchasedDeviceImplCopyWithImpl<_$PurchasedDeviceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchasedDeviceImplToJson(this);
  }
}

abstract class _PurchasedDevice implements PurchasedDevice {
  const factory _PurchasedDevice({
    final PurchasedDevicePlatform? platform,
    final String? model,
    final String? storage,
    final String? ram,
    final String? imei1,
    final String? imei2,
  }) = _$PurchasedDeviceImpl;

  factory _PurchasedDevice.fromJson(Map<String, dynamic> json) =
      _$PurchasedDeviceImpl.fromJson;

  @override
  PurchasedDevicePlatform? get platform;
  @override
  String? get model;
  @override
  String? get storage;
  @override
  String? get ram;
  @override
  String? get imei1;
  @override
  String? get imei2;

  /// Create a copy of PurchasedDevice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchasedDeviceImplCopyWith<_$PurchasedDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
