// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceUpdate {

 String? get model; String? get imei1; String? get imei2; String? get storage; String? get ram; int? get batteryHealth;
/// Create a copy of DeviceUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceUpdateCopyWith<DeviceUpdate> get copyWith => _$DeviceUpdateCopyWithImpl<DeviceUpdate>(this as DeviceUpdate, _$identity);

  /// Serializes this DeviceUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceUpdate&&(identical(other.model, model) || other.model == model)&&(identical(other.imei1, imei1) || other.imei1 == imei1)&&(identical(other.imei2, imei2) || other.imei2 == imei2)&&(identical(other.storage, storage) || other.storage == storage)&&(identical(other.ram, ram) || other.ram == ram)&&(identical(other.batteryHealth, batteryHealth) || other.batteryHealth == batteryHealth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,imei1,imei2,storage,ram,batteryHealth);

@override
String toString() {
  return 'DeviceUpdate(model: $model, imei1: $imei1, imei2: $imei2, storage: $storage, ram: $ram, batteryHealth: $batteryHealth)';
}


}

/// @nodoc
abstract mixin class $DeviceUpdateCopyWith<$Res>  {
  factory $DeviceUpdateCopyWith(DeviceUpdate value, $Res Function(DeviceUpdate) _then) = _$DeviceUpdateCopyWithImpl;
@useResult
$Res call({
 String? model, String? imei1, String? imei2, String? storage, String? ram, int? batteryHealth
});




}
/// @nodoc
class _$DeviceUpdateCopyWithImpl<$Res>
    implements $DeviceUpdateCopyWith<$Res> {
  _$DeviceUpdateCopyWithImpl(this._self, this._then);

  final DeviceUpdate _self;
  final $Res Function(DeviceUpdate) _then;

/// Create a copy of DeviceUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = freezed,Object? imei1 = freezed,Object? imei2 = freezed,Object? storage = freezed,Object? ram = freezed,Object? batteryHealth = freezed,}) {
  return _then(_self.copyWith(
model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,imei1: freezed == imei1 ? _self.imei1 : imei1 // ignore: cast_nullable_to_non_nullable
as String?,imei2: freezed == imei2 ? _self.imei2 : imei2 // ignore: cast_nullable_to_non_nullable
as String?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as String?,ram: freezed == ram ? _self.ram : ram // ignore: cast_nullable_to_non_nullable
as String?,batteryHealth: freezed == batteryHealth ? _self.batteryHealth : batteryHealth // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceUpdate].
extension DeviceUpdatePatterns on DeviceUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceUpdate value)  $default,){
final _that = this;
switch (_that) {
case _DeviceUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? model,  String? imei1,  String? imei2,  String? storage,  String? ram,  int? batteryHealth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceUpdate() when $default != null:
return $default(_that.model,_that.imei1,_that.imei2,_that.storage,_that.ram,_that.batteryHealth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? model,  String? imei1,  String? imei2,  String? storage,  String? ram,  int? batteryHealth)  $default,) {final _that = this;
switch (_that) {
case _DeviceUpdate():
return $default(_that.model,_that.imei1,_that.imei2,_that.storage,_that.ram,_that.batteryHealth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? model,  String? imei1,  String? imei2,  String? storage,  String? ram,  int? batteryHealth)?  $default,) {final _that = this;
switch (_that) {
case _DeviceUpdate() when $default != null:
return $default(_that.model,_that.imei1,_that.imei2,_that.storage,_that.ram,_that.batteryHealth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceUpdate implements DeviceUpdate {
  const _DeviceUpdate({this.model, this.imei1, this.imei2, this.storage, this.ram, this.batteryHealth});
  factory _DeviceUpdate.fromJson(Map<String, dynamic> json) => _$DeviceUpdateFromJson(json);

@override final  String? model;
@override final  String? imei1;
@override final  String? imei2;
@override final  String? storage;
@override final  String? ram;
@override final  int? batteryHealth;

/// Create a copy of DeviceUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceUpdateCopyWith<_DeviceUpdate> get copyWith => __$DeviceUpdateCopyWithImpl<_DeviceUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceUpdate&&(identical(other.model, model) || other.model == model)&&(identical(other.imei1, imei1) || other.imei1 == imei1)&&(identical(other.imei2, imei2) || other.imei2 == imei2)&&(identical(other.storage, storage) || other.storage == storage)&&(identical(other.ram, ram) || other.ram == ram)&&(identical(other.batteryHealth, batteryHealth) || other.batteryHealth == batteryHealth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,imei1,imei2,storage,ram,batteryHealth);

@override
String toString() {
  return 'DeviceUpdate(model: $model, imei1: $imei1, imei2: $imei2, storage: $storage, ram: $ram, batteryHealth: $batteryHealth)';
}


}

/// @nodoc
abstract mixin class _$DeviceUpdateCopyWith<$Res> implements $DeviceUpdateCopyWith<$Res> {
  factory _$DeviceUpdateCopyWith(_DeviceUpdate value, $Res Function(_DeviceUpdate) _then) = __$DeviceUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? model, String? imei1, String? imei2, String? storage, String? ram, int? batteryHealth
});




}
/// @nodoc
class __$DeviceUpdateCopyWithImpl<$Res>
    implements _$DeviceUpdateCopyWith<$Res> {
  __$DeviceUpdateCopyWithImpl(this._self, this._then);

  final _DeviceUpdate _self;
  final $Res Function(_DeviceUpdate) _then;

/// Create a copy of DeviceUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = freezed,Object? imei1 = freezed,Object? imei2 = freezed,Object? storage = freezed,Object? ram = freezed,Object? batteryHealth = freezed,}) {
  return _then(_DeviceUpdate(
model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,imei1: freezed == imei1 ? _self.imei1 : imei1 // ignore: cast_nullable_to_non_nullable
as String?,imei2: freezed == imei2 ? _self.imei2 : imei2 // ignore: cast_nullable_to_non_nullable
as String?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as String?,ram: freezed == ram ? _self.ram : ram // ignore: cast_nullable_to_non_nullable
as String?,batteryHealth: freezed == batteryHealth ? _self.batteryHealth : batteryHealth // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
