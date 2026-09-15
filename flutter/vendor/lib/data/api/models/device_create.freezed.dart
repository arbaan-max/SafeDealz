// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceCreate {

 String get branchId; DeviceCreatePlatform get platform; String get model; String get imei1; String get imei2; String get storage; String? get ram; int? get batteryHealth;
/// Create a copy of DeviceCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceCreateCopyWith<DeviceCreate> get copyWith => _$DeviceCreateCopyWithImpl<DeviceCreate>(this as DeviceCreate, _$identity);

  /// Serializes this DeviceCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceCreate&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.model, model) || other.model == model)&&(identical(other.imei1, imei1) || other.imei1 == imei1)&&(identical(other.imei2, imei2) || other.imei2 == imei2)&&(identical(other.storage, storage) || other.storage == storage)&&(identical(other.ram, ram) || other.ram == ram)&&(identical(other.batteryHealth, batteryHealth) || other.batteryHealth == batteryHealth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchId,platform,model,imei1,imei2,storage,ram,batteryHealth);

@override
String toString() {
  return 'DeviceCreate(branchId: $branchId, platform: $platform, model: $model, imei1: $imei1, imei2: $imei2, storage: $storage, ram: $ram, batteryHealth: $batteryHealth)';
}


}

/// @nodoc
abstract mixin class $DeviceCreateCopyWith<$Res>  {
  factory $DeviceCreateCopyWith(DeviceCreate value, $Res Function(DeviceCreate) _then) = _$DeviceCreateCopyWithImpl;
@useResult
$Res call({
 String branchId, DeviceCreatePlatform platform, String model, String imei1, String imei2, String storage, String? ram, int? batteryHealth
});




}
/// @nodoc
class _$DeviceCreateCopyWithImpl<$Res>
    implements $DeviceCreateCopyWith<$Res> {
  _$DeviceCreateCopyWithImpl(this._self, this._then);

  final DeviceCreate _self;
  final $Res Function(DeviceCreate) _then;

/// Create a copy of DeviceCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchId = null,Object? platform = null,Object? model = null,Object? imei1 = null,Object? imei2 = null,Object? storage = null,Object? ram = freezed,Object? batteryHealth = freezed,}) {
  return _then(_self.copyWith(
branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as DeviceCreatePlatform,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,imei1: null == imei1 ? _self.imei1 : imei1 // ignore: cast_nullable_to_non_nullable
as String,imei2: null == imei2 ? _self.imei2 : imei2 // ignore: cast_nullable_to_non_nullable
as String,storage: null == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as String,ram: freezed == ram ? _self.ram : ram // ignore: cast_nullable_to_non_nullable
as String?,batteryHealth: freezed == batteryHealth ? _self.batteryHealth : batteryHealth // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceCreate].
extension DeviceCreatePatterns on DeviceCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceCreate value)  $default,){
final _that = this;
switch (_that) {
case _DeviceCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceCreate value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String branchId,  DeviceCreatePlatform platform,  String model,  String imei1,  String imei2,  String storage,  String? ram,  int? batteryHealth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceCreate() when $default != null:
return $default(_that.branchId,_that.platform,_that.model,_that.imei1,_that.imei2,_that.storage,_that.ram,_that.batteryHealth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String branchId,  DeviceCreatePlatform platform,  String model,  String imei1,  String imei2,  String storage,  String? ram,  int? batteryHealth)  $default,) {final _that = this;
switch (_that) {
case _DeviceCreate():
return $default(_that.branchId,_that.platform,_that.model,_that.imei1,_that.imei2,_that.storage,_that.ram,_that.batteryHealth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String branchId,  DeviceCreatePlatform platform,  String model,  String imei1,  String imei2,  String storage,  String? ram,  int? batteryHealth)?  $default,) {final _that = this;
switch (_that) {
case _DeviceCreate() when $default != null:
return $default(_that.branchId,_that.platform,_that.model,_that.imei1,_that.imei2,_that.storage,_that.ram,_that.batteryHealth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceCreate implements DeviceCreate {
  const _DeviceCreate({required this.branchId, required this.platform, required this.model, required this.imei1, required this.imei2, required this.storage, this.ram, this.batteryHealth});
  factory _DeviceCreate.fromJson(Map<String, dynamic> json) => _$DeviceCreateFromJson(json);

@override final  String branchId;
@override final  DeviceCreatePlatform platform;
@override final  String model;
@override final  String imei1;
@override final  String imei2;
@override final  String storage;
@override final  String? ram;
@override final  int? batteryHealth;

/// Create a copy of DeviceCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceCreateCopyWith<_DeviceCreate> get copyWith => __$DeviceCreateCopyWithImpl<_DeviceCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceCreate&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.model, model) || other.model == model)&&(identical(other.imei1, imei1) || other.imei1 == imei1)&&(identical(other.imei2, imei2) || other.imei2 == imei2)&&(identical(other.storage, storage) || other.storage == storage)&&(identical(other.ram, ram) || other.ram == ram)&&(identical(other.batteryHealth, batteryHealth) || other.batteryHealth == batteryHealth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchId,platform,model,imei1,imei2,storage,ram,batteryHealth);

@override
String toString() {
  return 'DeviceCreate(branchId: $branchId, platform: $platform, model: $model, imei1: $imei1, imei2: $imei2, storage: $storage, ram: $ram, batteryHealth: $batteryHealth)';
}


}

/// @nodoc
abstract mixin class _$DeviceCreateCopyWith<$Res> implements $DeviceCreateCopyWith<$Res> {
  factory _$DeviceCreateCopyWith(_DeviceCreate value, $Res Function(_DeviceCreate) _then) = __$DeviceCreateCopyWithImpl;
@override @useResult
$Res call({
 String branchId, DeviceCreatePlatform platform, String model, String imei1, String imei2, String storage, String? ram, int? batteryHealth
});




}
/// @nodoc
class __$DeviceCreateCopyWithImpl<$Res>
    implements _$DeviceCreateCopyWith<$Res> {
  __$DeviceCreateCopyWithImpl(this._self, this._then);

  final _DeviceCreate _self;
  final $Res Function(_DeviceCreate) _then;

/// Create a copy of DeviceCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchId = null,Object? platform = null,Object? model = null,Object? imei1 = null,Object? imei2 = null,Object? storage = null,Object? ram = freezed,Object? batteryHealth = freezed,}) {
  return _then(_DeviceCreate(
branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as DeviceCreatePlatform,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,imei1: null == imei1 ? _self.imei1 : imei1 // ignore: cast_nullable_to_non_nullable
as String,imei2: null == imei2 ? _self.imei2 : imei2 // ignore: cast_nullable_to_non_nullable
as String,storage: null == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as String,ram: freezed == ram ? _self.ram : ram // ignore: cast_nullable_to_non_nullable
as String?,batteryHealth: freezed == batteryHealth ? _self.batteryHealth : batteryHealth // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
