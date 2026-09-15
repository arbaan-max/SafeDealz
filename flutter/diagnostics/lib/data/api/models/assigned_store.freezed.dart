// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assigned_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssignedStore {

 String get id; String get chainId; String get name; String get code; String get chainName; String? get address; String? get city; String? get contactName; String? get contactPhone; bool? get active; String? get chainCode;
/// Create a copy of AssignedStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssignedStoreCopyWith<AssignedStore> get copyWith => _$AssignedStoreCopyWithImpl<AssignedStore>(this as AssignedStore, _$identity);

  /// Serializes this AssignedStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssignedStore&&(identical(other.id, id) || other.id == id)&&(identical(other.chainId, chainId) || other.chainId == chainId)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.chainName, chainName) || other.chainName == chainName)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.active, active) || other.active == active)&&(identical(other.chainCode, chainCode) || other.chainCode == chainCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chainId,name,code,chainName,address,city,contactName,contactPhone,active,chainCode);

@override
String toString() {
  return 'AssignedStore(id: $id, chainId: $chainId, name: $name, code: $code, chainName: $chainName, address: $address, city: $city, contactName: $contactName, contactPhone: $contactPhone, active: $active, chainCode: $chainCode)';
}


}

/// @nodoc
abstract mixin class $AssignedStoreCopyWith<$Res>  {
  factory $AssignedStoreCopyWith(AssignedStore value, $Res Function(AssignedStore) _then) = _$AssignedStoreCopyWithImpl;
@useResult
$Res call({
 String id, String chainId, String name, String code, String chainName, String? address, String? city, String? contactName, String? contactPhone, bool? active, String? chainCode
});




}
/// @nodoc
class _$AssignedStoreCopyWithImpl<$Res>
    implements $AssignedStoreCopyWith<$Res> {
  _$AssignedStoreCopyWithImpl(this._self, this._then);

  final AssignedStore _self;
  final $Res Function(AssignedStore) _then;

/// Create a copy of AssignedStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? chainId = null,Object? name = null,Object? code = null,Object? chainName = null,Object? address = freezed,Object? city = freezed,Object? contactName = freezed,Object? contactPhone = freezed,Object? active = freezed,Object? chainCode = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chainId: null == chainId ? _self.chainId : chainId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,chainName: null == chainName ? _self.chainName : chainName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,chainCode: freezed == chainCode ? _self.chainCode : chainCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssignedStore].
extension AssignedStorePatterns on AssignedStore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssignedStore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssignedStore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssignedStore value)  $default,){
final _that = this;
switch (_that) {
case _AssignedStore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssignedStore value)?  $default,){
final _that = this;
switch (_that) {
case _AssignedStore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String chainId,  String name,  String code,  String chainName,  String? address,  String? city,  String? contactName,  String? contactPhone,  bool? active,  String? chainCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssignedStore() when $default != null:
return $default(_that.id,_that.chainId,_that.name,_that.code,_that.chainName,_that.address,_that.city,_that.contactName,_that.contactPhone,_that.active,_that.chainCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String chainId,  String name,  String code,  String chainName,  String? address,  String? city,  String? contactName,  String? contactPhone,  bool? active,  String? chainCode)  $default,) {final _that = this;
switch (_that) {
case _AssignedStore():
return $default(_that.id,_that.chainId,_that.name,_that.code,_that.chainName,_that.address,_that.city,_that.contactName,_that.contactPhone,_that.active,_that.chainCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String chainId,  String name,  String code,  String chainName,  String? address,  String? city,  String? contactName,  String? contactPhone,  bool? active,  String? chainCode)?  $default,) {final _that = this;
switch (_that) {
case _AssignedStore() when $default != null:
return $default(_that.id,_that.chainId,_that.name,_that.code,_that.chainName,_that.address,_that.city,_that.contactName,_that.contactPhone,_that.active,_that.chainCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssignedStore implements AssignedStore {
  const _AssignedStore({required this.id, required this.chainId, required this.name, required this.code, required this.chainName, this.address, this.city, this.contactName, this.contactPhone, this.active, this.chainCode});
  factory _AssignedStore.fromJson(Map<String, dynamic> json) => _$AssignedStoreFromJson(json);

@override final  String id;
@override final  String chainId;
@override final  String name;
@override final  String code;
@override final  String chainName;
@override final  String? address;
@override final  String? city;
@override final  String? contactName;
@override final  String? contactPhone;
@override final  bool? active;
@override final  String? chainCode;

/// Create a copy of AssignedStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssignedStoreCopyWith<_AssignedStore> get copyWith => __$AssignedStoreCopyWithImpl<_AssignedStore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssignedStoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssignedStore&&(identical(other.id, id) || other.id == id)&&(identical(other.chainId, chainId) || other.chainId == chainId)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.chainName, chainName) || other.chainName == chainName)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.active, active) || other.active == active)&&(identical(other.chainCode, chainCode) || other.chainCode == chainCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chainId,name,code,chainName,address,city,contactName,contactPhone,active,chainCode);

@override
String toString() {
  return 'AssignedStore(id: $id, chainId: $chainId, name: $name, code: $code, chainName: $chainName, address: $address, city: $city, contactName: $contactName, contactPhone: $contactPhone, active: $active, chainCode: $chainCode)';
}


}

/// @nodoc
abstract mixin class _$AssignedStoreCopyWith<$Res> implements $AssignedStoreCopyWith<$Res> {
  factory _$AssignedStoreCopyWith(_AssignedStore value, $Res Function(_AssignedStore) _then) = __$AssignedStoreCopyWithImpl;
@override @useResult
$Res call({
 String id, String chainId, String name, String code, String chainName, String? address, String? city, String? contactName, String? contactPhone, bool? active, String? chainCode
});




}
/// @nodoc
class __$AssignedStoreCopyWithImpl<$Res>
    implements _$AssignedStoreCopyWith<$Res> {
  __$AssignedStoreCopyWithImpl(this._self, this._then);

  final _AssignedStore _self;
  final $Res Function(_AssignedStore) _then;

/// Create a copy of AssignedStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chainId = null,Object? name = null,Object? code = null,Object? chainName = null,Object? address = freezed,Object? city = freezed,Object? contactName = freezed,Object? contactPhone = freezed,Object? active = freezed,Object? chainCode = freezed,}) {
  return _then(_AssignedStore(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chainId: null == chainId ? _self.chainId : chainId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,chainName: null == chainName ? _self.chainName : chainName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,chainCode: freezed == chainCode ? _self.chainCode : chainCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
