// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchased_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchasedDevice {

 PurchasedDevicePlatform? get platform; String? get model; String? get storage; String? get ram; String? get imei1; String? get imei2;
/// Create a copy of PurchasedDevice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchasedDeviceCopyWith<PurchasedDevice> get copyWith => _$PurchasedDeviceCopyWithImpl<PurchasedDevice>(this as PurchasedDevice, _$identity);

  /// Serializes this PurchasedDevice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchasedDevice&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.model, model) || other.model == model)&&(identical(other.storage, storage) || other.storage == storage)&&(identical(other.ram, ram) || other.ram == ram)&&(identical(other.imei1, imei1) || other.imei1 == imei1)&&(identical(other.imei2, imei2) || other.imei2 == imei2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,platform,model,storage,ram,imei1,imei2);

@override
String toString() {
  return 'PurchasedDevice(platform: $platform, model: $model, storage: $storage, ram: $ram, imei1: $imei1, imei2: $imei2)';
}


}

/// @nodoc
abstract mixin class $PurchasedDeviceCopyWith<$Res>  {
  factory $PurchasedDeviceCopyWith(PurchasedDevice value, $Res Function(PurchasedDevice) _then) = _$PurchasedDeviceCopyWithImpl;
@useResult
$Res call({
 PurchasedDevicePlatform? platform, String? model, String? storage, String? ram, String? imei1, String? imei2
});




}
/// @nodoc
class _$PurchasedDeviceCopyWithImpl<$Res>
    implements $PurchasedDeviceCopyWith<$Res> {
  _$PurchasedDeviceCopyWithImpl(this._self, this._then);

  final PurchasedDevice _self;
  final $Res Function(PurchasedDevice) _then;

/// Create a copy of PurchasedDevice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? platform = freezed,Object? model = freezed,Object? storage = freezed,Object? ram = freezed,Object? imei1 = freezed,Object? imei2 = freezed,}) {
  return _then(_self.copyWith(
platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as PurchasedDevicePlatform?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as String?,ram: freezed == ram ? _self.ram : ram // ignore: cast_nullable_to_non_nullable
as String?,imei1: freezed == imei1 ? _self.imei1 : imei1 // ignore: cast_nullable_to_non_nullable
as String?,imei2: freezed == imei2 ? _self.imei2 : imei2 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchasedDevice].
extension PurchasedDevicePatterns on PurchasedDevice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchasedDevice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchasedDevice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchasedDevice value)  $default,){
final _that = this;
switch (_that) {
case _PurchasedDevice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchasedDevice value)?  $default,){
final _that = this;
switch (_that) {
case _PurchasedDevice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PurchasedDevicePlatform? platform,  String? model,  String? storage,  String? ram,  String? imei1,  String? imei2)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchasedDevice() when $default != null:
return $default(_that.platform,_that.model,_that.storage,_that.ram,_that.imei1,_that.imei2);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PurchasedDevicePlatform? platform,  String? model,  String? storage,  String? ram,  String? imei1,  String? imei2)  $default,) {final _that = this;
switch (_that) {
case _PurchasedDevice():
return $default(_that.platform,_that.model,_that.storage,_that.ram,_that.imei1,_that.imei2);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PurchasedDevicePlatform? platform,  String? model,  String? storage,  String? ram,  String? imei1,  String? imei2)?  $default,) {final _that = this;
switch (_that) {
case _PurchasedDevice() when $default != null:
return $default(_that.platform,_that.model,_that.storage,_that.ram,_that.imei1,_that.imei2);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchasedDevice implements PurchasedDevice {
  const _PurchasedDevice({this.platform, this.model, this.storage, this.ram, this.imei1, this.imei2});
  factory _PurchasedDevice.fromJson(Map<String, dynamic> json) => _$PurchasedDeviceFromJson(json);

@override final  PurchasedDevicePlatform? platform;
@override final  String? model;
@override final  String? storage;
@override final  String? ram;
@override final  String? imei1;
@override final  String? imei2;

/// Create a copy of PurchasedDevice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchasedDeviceCopyWith<_PurchasedDevice> get copyWith => __$PurchasedDeviceCopyWithImpl<_PurchasedDevice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchasedDeviceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchasedDevice&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.model, model) || other.model == model)&&(identical(other.storage, storage) || other.storage == storage)&&(identical(other.ram, ram) || other.ram == ram)&&(identical(other.imei1, imei1) || other.imei1 == imei1)&&(identical(other.imei2, imei2) || other.imei2 == imei2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,platform,model,storage,ram,imei1,imei2);

@override
String toString() {
  return 'PurchasedDevice(platform: $platform, model: $model, storage: $storage, ram: $ram, imei1: $imei1, imei2: $imei2)';
}


}

/// @nodoc
abstract mixin class _$PurchasedDeviceCopyWith<$Res> implements $PurchasedDeviceCopyWith<$Res> {
  factory _$PurchasedDeviceCopyWith(_PurchasedDevice value, $Res Function(_PurchasedDevice) _then) = __$PurchasedDeviceCopyWithImpl;
@override @useResult
$Res call({
 PurchasedDevicePlatform? platform, String? model, String? storage, String? ram, String? imei1, String? imei2
});




}
/// @nodoc
class __$PurchasedDeviceCopyWithImpl<$Res>
    implements _$PurchasedDeviceCopyWith<$Res> {
  __$PurchasedDeviceCopyWithImpl(this._self, this._then);

  final _PurchasedDevice _self;
  final $Res Function(_PurchasedDevice) _then;

/// Create a copy of PurchasedDevice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? platform = freezed,Object? model = freezed,Object? storage = freezed,Object? ram = freezed,Object? imei1 = freezed,Object? imei2 = freezed,}) {
  return _then(_PurchasedDevice(
platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as PurchasedDevicePlatform?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as String?,ram: freezed == ram ? _self.ram : ram // ignore: cast_nullable_to_non_nullable
as String?,imei1: freezed == imei1 ? _self.imei1 : imei1 // ignore: cast_nullable_to_non_nullable
as String?,imei2: freezed == imei2 ? _self.imei2 : imei2 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
