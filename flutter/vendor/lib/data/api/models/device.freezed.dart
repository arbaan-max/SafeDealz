// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Device {

 String get id; String get branchId; DevicePlatform get platform; String get model; String get imei1; String get imei2; String get storage; String get status; String? get ram; int? get batteryHealth; InspectionRecord? get inspection; List<DeviceMedia>? get media;
/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceCopyWith<Device> get copyWith => _$DeviceCopyWithImpl<Device>(this as Device, _$identity);

  /// Serializes this Device to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Device&&(identical(other.id, id) || other.id == id)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.model, model) || other.model == model)&&(identical(other.imei1, imei1) || other.imei1 == imei1)&&(identical(other.imei2, imei2) || other.imei2 == imei2)&&(identical(other.storage, storage) || other.storage == storage)&&(identical(other.status, status) || other.status == status)&&(identical(other.ram, ram) || other.ram == ram)&&(identical(other.batteryHealth, batteryHealth) || other.batteryHealth == batteryHealth)&&(identical(other.inspection, inspection) || other.inspection == inspection)&&const DeepCollectionEquality().equals(other.media, media));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,branchId,platform,model,imei1,imei2,storage,status,ram,batteryHealth,inspection,const DeepCollectionEquality().hash(media));

@override
String toString() {
  return 'Device(id: $id, branchId: $branchId, platform: $platform, model: $model, imei1: $imei1, imei2: $imei2, storage: $storage, status: $status, ram: $ram, batteryHealth: $batteryHealth, inspection: $inspection, media: $media)';
}


}

/// @nodoc
abstract mixin class $DeviceCopyWith<$Res>  {
  factory $DeviceCopyWith(Device value, $Res Function(Device) _then) = _$DeviceCopyWithImpl;
@useResult
$Res call({
 String id, String branchId, DevicePlatform platform, String model, String imei1, String imei2, String storage, String status, String? ram, int? batteryHealth, InspectionRecord? inspection, List<DeviceMedia>? media
});


$InspectionRecordCopyWith<$Res>? get inspection;

}
/// @nodoc
class _$DeviceCopyWithImpl<$Res>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._self, this._then);

  final Device _self;
  final $Res Function(Device) _then;

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? branchId = null,Object? platform = null,Object? model = null,Object? imei1 = null,Object? imei2 = null,Object? storage = null,Object? status = null,Object? ram = freezed,Object? batteryHealth = freezed,Object? inspection = freezed,Object? media = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as DevicePlatform,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,imei1: null == imei1 ? _self.imei1 : imei1 // ignore: cast_nullable_to_non_nullable
as String,imei2: null == imei2 ? _self.imei2 : imei2 // ignore: cast_nullable_to_non_nullable
as String,storage: null == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,ram: freezed == ram ? _self.ram : ram // ignore: cast_nullable_to_non_nullable
as String?,batteryHealth: freezed == batteryHealth ? _self.batteryHealth : batteryHealth // ignore: cast_nullable_to_non_nullable
as int?,inspection: freezed == inspection ? _self.inspection : inspection // ignore: cast_nullable_to_non_nullable
as InspectionRecord?,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<DeviceMedia>?,
  ));
}
/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InspectionRecordCopyWith<$Res>? get inspection {
    if (_self.inspection == null) {
    return null;
  }

  return $InspectionRecordCopyWith<$Res>(_self.inspection!, (value) {
    return _then(_self.copyWith(inspection: value));
  });
}
}


/// Adds pattern-matching-related methods to [Device].
extension DevicePatterns on Device {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Device value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Device() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Device value)  $default,){
final _that = this;
switch (_that) {
case _Device():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Device value)?  $default,){
final _that = this;
switch (_that) {
case _Device() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String branchId,  DevicePlatform platform,  String model,  String imei1,  String imei2,  String storage,  String status,  String? ram,  int? batteryHealth,  InspectionRecord? inspection,  List<DeviceMedia>? media)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Device() when $default != null:
return $default(_that.id,_that.branchId,_that.platform,_that.model,_that.imei1,_that.imei2,_that.storage,_that.status,_that.ram,_that.batteryHealth,_that.inspection,_that.media);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String branchId,  DevicePlatform platform,  String model,  String imei1,  String imei2,  String storage,  String status,  String? ram,  int? batteryHealth,  InspectionRecord? inspection,  List<DeviceMedia>? media)  $default,) {final _that = this;
switch (_that) {
case _Device():
return $default(_that.id,_that.branchId,_that.platform,_that.model,_that.imei1,_that.imei2,_that.storage,_that.status,_that.ram,_that.batteryHealth,_that.inspection,_that.media);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String branchId,  DevicePlatform platform,  String model,  String imei1,  String imei2,  String storage,  String status,  String? ram,  int? batteryHealth,  InspectionRecord? inspection,  List<DeviceMedia>? media)?  $default,) {final _that = this;
switch (_that) {
case _Device() when $default != null:
return $default(_that.id,_that.branchId,_that.platform,_that.model,_that.imei1,_that.imei2,_that.storage,_that.status,_that.ram,_that.batteryHealth,_that.inspection,_that.media);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Device implements Device {
  const _Device({required this.id, required this.branchId, required this.platform, required this.model, required this.imei1, required this.imei2, required this.storage, required this.status, this.ram, this.batteryHealth, this.inspection, final  List<DeviceMedia>? media}): _media = media;
  factory _Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

@override final  String id;
@override final  String branchId;
@override final  DevicePlatform platform;
@override final  String model;
@override final  String imei1;
@override final  String imei2;
@override final  String storage;
@override final  String status;
@override final  String? ram;
@override final  int? batteryHealth;
@override final  InspectionRecord? inspection;
 final  List<DeviceMedia>? _media;
@override List<DeviceMedia>? get media {
  final value = _media;
  if (value == null) return null;
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceCopyWith<_Device> get copyWith => __$DeviceCopyWithImpl<_Device>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Device&&(identical(other.id, id) || other.id == id)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.model, model) || other.model == model)&&(identical(other.imei1, imei1) || other.imei1 == imei1)&&(identical(other.imei2, imei2) || other.imei2 == imei2)&&(identical(other.storage, storage) || other.storage == storage)&&(identical(other.status, status) || other.status == status)&&(identical(other.ram, ram) || other.ram == ram)&&(identical(other.batteryHealth, batteryHealth) || other.batteryHealth == batteryHealth)&&(identical(other.inspection, inspection) || other.inspection == inspection)&&const DeepCollectionEquality().equals(other._media, _media));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,branchId,platform,model,imei1,imei2,storage,status,ram,batteryHealth,inspection,const DeepCollectionEquality().hash(_media));

@override
String toString() {
  return 'Device(id: $id, branchId: $branchId, platform: $platform, model: $model, imei1: $imei1, imei2: $imei2, storage: $storage, status: $status, ram: $ram, batteryHealth: $batteryHealth, inspection: $inspection, media: $media)';
}


}

/// @nodoc
abstract mixin class _$DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$DeviceCopyWith(_Device value, $Res Function(_Device) _then) = __$DeviceCopyWithImpl;
@override @useResult
$Res call({
 String id, String branchId, DevicePlatform platform, String model, String imei1, String imei2, String storage, String status, String? ram, int? batteryHealth, InspectionRecord? inspection, List<DeviceMedia>? media
});


@override $InspectionRecordCopyWith<$Res>? get inspection;

}
/// @nodoc
class __$DeviceCopyWithImpl<$Res>
    implements _$DeviceCopyWith<$Res> {
  __$DeviceCopyWithImpl(this._self, this._then);

  final _Device _self;
  final $Res Function(_Device) _then;

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? branchId = null,Object? platform = null,Object? model = null,Object? imei1 = null,Object? imei2 = null,Object? storage = null,Object? status = null,Object? ram = freezed,Object? batteryHealth = freezed,Object? inspection = freezed,Object? media = freezed,}) {
  return _then(_Device(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as DevicePlatform,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,imei1: null == imei1 ? _self.imei1 : imei1 // ignore: cast_nullable_to_non_nullable
as String,imei2: null == imei2 ? _self.imei2 : imei2 // ignore: cast_nullable_to_non_nullable
as String,storage: null == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,ram: freezed == ram ? _self.ram : ram // ignore: cast_nullable_to_non_nullable
as String?,batteryHealth: freezed == batteryHealth ? _self.batteryHealth : batteryHealth // ignore: cast_nullable_to_non_nullable
as int?,inspection: freezed == inspection ? _self.inspection : inspection // ignore: cast_nullable_to_non_nullable
as InspectionRecord?,media: freezed == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<DeviceMedia>?,
  ));
}

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InspectionRecordCopyWith<$Res>? get inspection {
    if (_self.inspection == null) {
    return null;
  }

  return $InspectionRecordCopyWith<$Res>(_self.inspection!, (value) {
    return _then(_self.copyWith(inspection: value));
  });
}
}

// dart format on
