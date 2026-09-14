// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return _Device.fromJson(json);
}

/// @nodoc
mixin _$Device {
  String get id => throw _privateConstructorUsedError;
  String get branchId => throw _privateConstructorUsedError;
  DevicePlatform get platform => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get imei1 => throw _privateConstructorUsedError;
  String get imei2 => throw _privateConstructorUsedError;
  String get storage => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get ram => throw _privateConstructorUsedError;
  int? get batteryHealth => throw _privateConstructorUsedError;
  InspectionRecord? get inspection => throw _privateConstructorUsedError;
  List<DeviceMedia>? get media => throw _privateConstructorUsedError;

  /// Serializes this Device to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res, Device>;
  @useResult
  $Res call({
    String id,
    String branchId,
    DevicePlatform platform,
    String model,
    String imei1,
    String imei2,
    String storage,
    String status,
    String? ram,
    int? batteryHealth,
    InspectionRecord? inspection,
    List<DeviceMedia>? media,
  });

  $InspectionRecordCopyWith<$Res>? get inspection;
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res, $Val extends Device>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? branchId = null,
    Object? platform = null,
    Object? model = null,
    Object? imei1 = null,
    Object? imei2 = null,
    Object? storage = null,
    Object? status = null,
    Object? ram = freezed,
    Object? batteryHealth = freezed,
    Object? inspection = freezed,
    Object? media = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            branchId: null == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String,
            platform: null == platform
                ? _value.platform
                : platform // ignore: cast_nullable_to_non_nullable
                      as DevicePlatform,
            model: null == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                      as String,
            imei1: null == imei1
                ? _value.imei1
                : imei1 // ignore: cast_nullable_to_non_nullable
                      as String,
            imei2: null == imei2
                ? _value.imei2
                : imei2 // ignore: cast_nullable_to_non_nullable
                      as String,
            storage: null == storage
                ? _value.storage
                : storage // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            ram: freezed == ram
                ? _value.ram
                : ram // ignore: cast_nullable_to_non_nullable
                      as String?,
            batteryHealth: freezed == batteryHealth
                ? _value.batteryHealth
                : batteryHealth // ignore: cast_nullable_to_non_nullable
                      as int?,
            inspection: freezed == inspection
                ? _value.inspection
                : inspection // ignore: cast_nullable_to_non_nullable
                      as InspectionRecord?,
            media: freezed == media
                ? _value.media
                : media // ignore: cast_nullable_to_non_nullable
                      as List<DeviceMedia>?,
          )
          as $Val,
    );
  }

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InspectionRecordCopyWith<$Res>? get inspection {
    if (_value.inspection == null) {
      return null;
    }

    return $InspectionRecordCopyWith<$Res>(_value.inspection!, (value) {
      return _then(_value.copyWith(inspection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceImplCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$$DeviceImplCopyWith(
    _$DeviceImpl value,
    $Res Function(_$DeviceImpl) then,
  ) = __$$DeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String branchId,
    DevicePlatform platform,
    String model,
    String imei1,
    String imei2,
    String storage,
    String status,
    String? ram,
    int? batteryHealth,
    InspectionRecord? inspection,
    List<DeviceMedia>? media,
  });

  @override
  $InspectionRecordCopyWith<$Res>? get inspection;
}

/// @nodoc
class __$$DeviceImplCopyWithImpl<$Res>
    extends _$DeviceCopyWithImpl<$Res, _$DeviceImpl>
    implements _$$DeviceImplCopyWith<$Res> {
  __$$DeviceImplCopyWithImpl(
    _$DeviceImpl _value,
    $Res Function(_$DeviceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? branchId = null,
    Object? platform = null,
    Object? model = null,
    Object? imei1 = null,
    Object? imei2 = null,
    Object? storage = null,
    Object? status = null,
    Object? ram = freezed,
    Object? batteryHealth = freezed,
    Object? inspection = freezed,
    Object? media = freezed,
  }) {
    return _then(
      _$DeviceImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        branchId: null == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String,
        platform: null == platform
            ? _value.platform
            : platform // ignore: cast_nullable_to_non_nullable
                  as DevicePlatform,
        model: null == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as String,
        imei1: null == imei1
            ? _value.imei1
            : imei1 // ignore: cast_nullable_to_non_nullable
                  as String,
        imei2: null == imei2
            ? _value.imei2
            : imei2 // ignore: cast_nullable_to_non_nullable
                  as String,
        storage: null == storage
            ? _value.storage
            : storage // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        ram: freezed == ram
            ? _value.ram
            : ram // ignore: cast_nullable_to_non_nullable
                  as String?,
        batteryHealth: freezed == batteryHealth
            ? _value.batteryHealth
            : batteryHealth // ignore: cast_nullable_to_non_nullable
                  as int?,
        inspection: freezed == inspection
            ? _value.inspection
            : inspection // ignore: cast_nullable_to_non_nullable
                  as InspectionRecord?,
        media: freezed == media
            ? _value._media
            : media // ignore: cast_nullable_to_non_nullable
                  as List<DeviceMedia>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceImpl implements _Device {
  const _$DeviceImpl({
    required this.id,
    required this.branchId,
    required this.platform,
    required this.model,
    required this.imei1,
    required this.imei2,
    required this.storage,
    required this.status,
    this.ram,
    this.batteryHealth,
    this.inspection,
    final List<DeviceMedia>? media,
  }) : _media = media;

  factory _$DeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceImplFromJson(json);

  @override
  final String id;
  @override
  final String branchId;
  @override
  final DevicePlatform platform;
  @override
  final String model;
  @override
  final String imei1;
  @override
  final String imei2;
  @override
  final String storage;
  @override
  final String status;
  @override
  final String? ram;
  @override
  final int? batteryHealth;
  @override
  final InspectionRecord? inspection;
  final List<DeviceMedia>? _media;
  @override
  List<DeviceMedia>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Device(id: $id, branchId: $branchId, platform: $platform, model: $model, imei1: $imei1, imei2: $imei2, storage: $storage, status: $status, ram: $ram, batteryHealth: $batteryHealth, inspection: $inspection, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.imei1, imei1) || other.imei1 == imei1) &&
            (identical(other.imei2, imei2) || other.imei2 == imei2) &&
            (identical(other.storage, storage) || other.storage == storage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ram, ram) || other.ram == ram) &&
            (identical(other.batteryHealth, batteryHealth) ||
                other.batteryHealth == batteryHealth) &&
            (identical(other.inspection, inspection) ||
                other.inspection == inspection) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    branchId,
    platform,
    model,
    imei1,
    imei2,
    storage,
    status,
    ram,
    batteryHealth,
    inspection,
    const DeepCollectionEquality().hash(_media),
  );

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceImplCopyWith<_$DeviceImpl> get copyWith =>
      __$$DeviceImplCopyWithImpl<_$DeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceImplToJson(this);
  }
}

abstract class _Device implements Device {
  const factory _Device({
    required final String id,
    required final String branchId,
    required final DevicePlatform platform,
    required final String model,
    required final String imei1,
    required final String imei2,
    required final String storage,
    required final String status,
    final String? ram,
    final int? batteryHealth,
    final InspectionRecord? inspection,
    final List<DeviceMedia>? media,
  }) = _$DeviceImpl;

  factory _Device.fromJson(Map<String, dynamic> json) = _$DeviceImpl.fromJson;

  @override
  String get id;
  @override
  String get branchId;
  @override
  DevicePlatform get platform;
  @override
  String get model;
  @override
  String get imei1;
  @override
  String get imei2;
  @override
  String get storage;
  @override
  String get status;
  @override
  String? get ram;
  @override
  int? get batteryHealth;
  @override
  InspectionRecord? get inspection;
  @override
  List<DeviceMedia>? get media;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceImplCopyWith<_$DeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
