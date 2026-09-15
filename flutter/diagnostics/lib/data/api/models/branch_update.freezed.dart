// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BranchUpdate {

 String? get name; String? get code; String? get address; String? get city; String? get contactName; String? get contactPhone; String? get beneficiaryName; String? get accountNumber; String? get ifsc; String? get currentPassword; bool? get active;
/// Create a copy of BranchUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchUpdateCopyWith<BranchUpdate> get copyWith => _$BranchUpdateCopyWithImpl<BranchUpdate>(this as BranchUpdate, _$identity);

  /// Serializes this BranchUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.ifsc, ifsc) || other.ifsc == ifsc)&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,address,city,contactName,contactPhone,beneficiaryName,accountNumber,ifsc,currentPassword,active);

@override
String toString() {
  return 'BranchUpdate(name: $name, code: $code, address: $address, city: $city, contactName: $contactName, contactPhone: $contactPhone, beneficiaryName: $beneficiaryName, accountNumber: $accountNumber, ifsc: $ifsc, currentPassword: $currentPassword, active: $active)';
}


}

/// @nodoc
abstract mixin class $BranchUpdateCopyWith<$Res>  {
  factory $BranchUpdateCopyWith(BranchUpdate value, $Res Function(BranchUpdate) _then) = _$BranchUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, String? code, String? address, String? city, String? contactName, String? contactPhone, String? beneficiaryName, String? accountNumber, String? ifsc, String? currentPassword, bool? active
});




}
/// @nodoc
class _$BranchUpdateCopyWithImpl<$Res>
    implements $BranchUpdateCopyWith<$Res> {
  _$BranchUpdateCopyWithImpl(this._self, this._then);

  final BranchUpdate _self;
  final $Res Function(BranchUpdate) _then;

/// Create a copy of BranchUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? code = freezed,Object? address = freezed,Object? city = freezed,Object? contactName = freezed,Object? contactPhone = freezed,Object? beneficiaryName = freezed,Object? accountNumber = freezed,Object? ifsc = freezed,Object? currentPassword = freezed,Object? active = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryName: freezed == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,ifsc: freezed == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String?,currentPassword: freezed == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [BranchUpdate].
extension BranchUpdatePatterns on BranchUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchUpdate value)  $default,){
final _that = this;
switch (_that) {
case _BranchUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _BranchUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? code,  String? address,  String? city,  String? contactName,  String? contactPhone,  String? beneficiaryName,  String? accountNumber,  String? ifsc,  String? currentPassword,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchUpdate() when $default != null:
return $default(_that.name,_that.code,_that.address,_that.city,_that.contactName,_that.contactPhone,_that.beneficiaryName,_that.accountNumber,_that.ifsc,_that.currentPassword,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? code,  String? address,  String? city,  String? contactName,  String? contactPhone,  String? beneficiaryName,  String? accountNumber,  String? ifsc,  String? currentPassword,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _BranchUpdate():
return $default(_that.name,_that.code,_that.address,_that.city,_that.contactName,_that.contactPhone,_that.beneficiaryName,_that.accountNumber,_that.ifsc,_that.currentPassword,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? code,  String? address,  String? city,  String? contactName,  String? contactPhone,  String? beneficiaryName,  String? accountNumber,  String? ifsc,  String? currentPassword,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _BranchUpdate() when $default != null:
return $default(_that.name,_that.code,_that.address,_that.city,_that.contactName,_that.contactPhone,_that.beneficiaryName,_that.accountNumber,_that.ifsc,_that.currentPassword,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchUpdate implements BranchUpdate {
  const _BranchUpdate({this.name, this.code, this.address, this.city, this.contactName, this.contactPhone, this.beneficiaryName, this.accountNumber, this.ifsc, this.currentPassword, this.active});
  factory _BranchUpdate.fromJson(Map<String, dynamic> json) => _$BranchUpdateFromJson(json);

@override final  String? name;
@override final  String? code;
@override final  String? address;
@override final  String? city;
@override final  String? contactName;
@override final  String? contactPhone;
@override final  String? beneficiaryName;
@override final  String? accountNumber;
@override final  String? ifsc;
@override final  String? currentPassword;
@override final  bool? active;

/// Create a copy of BranchUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchUpdateCopyWith<_BranchUpdate> get copyWith => __$BranchUpdateCopyWithImpl<_BranchUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.ifsc, ifsc) || other.ifsc == ifsc)&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,address,city,contactName,contactPhone,beneficiaryName,accountNumber,ifsc,currentPassword,active);

@override
String toString() {
  return 'BranchUpdate(name: $name, code: $code, address: $address, city: $city, contactName: $contactName, contactPhone: $contactPhone, beneficiaryName: $beneficiaryName, accountNumber: $accountNumber, ifsc: $ifsc, currentPassword: $currentPassword, active: $active)';
}


}

/// @nodoc
abstract mixin class _$BranchUpdateCopyWith<$Res> implements $BranchUpdateCopyWith<$Res> {
  factory _$BranchUpdateCopyWith(_BranchUpdate value, $Res Function(_BranchUpdate) _then) = __$BranchUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? code, String? address, String? city, String? contactName, String? contactPhone, String? beneficiaryName, String? accountNumber, String? ifsc, String? currentPassword, bool? active
});




}
/// @nodoc
class __$BranchUpdateCopyWithImpl<$Res>
    implements _$BranchUpdateCopyWith<$Res> {
  __$BranchUpdateCopyWithImpl(this._self, this._then);

  final _BranchUpdate _self;
  final $Res Function(_BranchUpdate) _then;

/// Create a copy of BranchUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? code = freezed,Object? address = freezed,Object? city = freezed,Object? contactName = freezed,Object? contactPhone = freezed,Object? beneficiaryName = freezed,Object? accountNumber = freezed,Object? ifsc = freezed,Object? currentPassword = freezed,Object? active = freezed,}) {
  return _then(_BranchUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryName: freezed == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,ifsc: freezed == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String?,currentPassword: freezed == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
