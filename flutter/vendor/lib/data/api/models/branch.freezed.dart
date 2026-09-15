// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Branch {

 String get id; String get chainId; String get name; String get code; bool get active; String? get address; String? get city; String? get contactName; String? get contactPhone; String? get beneficiaryName; String? get ifsc; String? get accountNumberMasked; String? get accountNumber; bool? get payoutReady;
/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchCopyWith<Branch> get copyWith => _$BranchCopyWithImpl<Branch>(this as Branch, _$identity);

  /// Serializes this Branch to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Branch&&(identical(other.id, id) || other.id == id)&&(identical(other.chainId, chainId) || other.chainId == chainId)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.active, active) || other.active == active)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.ifsc, ifsc) || other.ifsc == ifsc)&&(identical(other.accountNumberMasked, accountNumberMasked) || other.accountNumberMasked == accountNumberMasked)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.payoutReady, payoutReady) || other.payoutReady == payoutReady));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chainId,name,code,active,address,city,contactName,contactPhone,beneficiaryName,ifsc,accountNumberMasked,accountNumber,payoutReady);

@override
String toString() {
  return 'Branch(id: $id, chainId: $chainId, name: $name, code: $code, active: $active, address: $address, city: $city, contactName: $contactName, contactPhone: $contactPhone, beneficiaryName: $beneficiaryName, ifsc: $ifsc, accountNumberMasked: $accountNumberMasked, accountNumber: $accountNumber, payoutReady: $payoutReady)';
}


}

/// @nodoc
abstract mixin class $BranchCopyWith<$Res>  {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) _then) = _$BranchCopyWithImpl;
@useResult
$Res call({
 String id, String chainId, String name, String code, bool active, String? address, String? city, String? contactName, String? contactPhone, String? beneficiaryName, String? ifsc, String? accountNumberMasked, String? accountNumber, bool? payoutReady
});




}
/// @nodoc
class _$BranchCopyWithImpl<$Res>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._self, this._then);

  final Branch _self;
  final $Res Function(Branch) _then;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? chainId = null,Object? name = null,Object? code = null,Object? active = null,Object? address = freezed,Object? city = freezed,Object? contactName = freezed,Object? contactPhone = freezed,Object? beneficiaryName = freezed,Object? ifsc = freezed,Object? accountNumberMasked = freezed,Object? accountNumber = freezed,Object? payoutReady = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chainId: null == chainId ? _self.chainId : chainId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryName: freezed == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String?,ifsc: freezed == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String?,accountNumberMasked: freezed == accountNumberMasked ? _self.accountNumberMasked : accountNumberMasked // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,payoutReady: freezed == payoutReady ? _self.payoutReady : payoutReady // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Branch].
extension BranchPatterns on Branch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Branch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Branch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Branch value)  $default,){
final _that = this;
switch (_that) {
case _Branch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Branch value)?  $default,){
final _that = this;
switch (_that) {
case _Branch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String chainId,  String name,  String code,  bool active,  String? address,  String? city,  String? contactName,  String? contactPhone,  String? beneficiaryName,  String? ifsc,  String? accountNumberMasked,  String? accountNumber,  bool? payoutReady)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that.id,_that.chainId,_that.name,_that.code,_that.active,_that.address,_that.city,_that.contactName,_that.contactPhone,_that.beneficiaryName,_that.ifsc,_that.accountNumberMasked,_that.accountNumber,_that.payoutReady);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String chainId,  String name,  String code,  bool active,  String? address,  String? city,  String? contactName,  String? contactPhone,  String? beneficiaryName,  String? ifsc,  String? accountNumberMasked,  String? accountNumber,  bool? payoutReady)  $default,) {final _that = this;
switch (_that) {
case _Branch():
return $default(_that.id,_that.chainId,_that.name,_that.code,_that.active,_that.address,_that.city,_that.contactName,_that.contactPhone,_that.beneficiaryName,_that.ifsc,_that.accountNumberMasked,_that.accountNumber,_that.payoutReady);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String chainId,  String name,  String code,  bool active,  String? address,  String? city,  String? contactName,  String? contactPhone,  String? beneficiaryName,  String? ifsc,  String? accountNumberMasked,  String? accountNumber,  bool? payoutReady)?  $default,) {final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that.id,_that.chainId,_that.name,_that.code,_that.active,_that.address,_that.city,_that.contactName,_that.contactPhone,_that.beneficiaryName,_that.ifsc,_that.accountNumberMasked,_that.accountNumber,_that.payoutReady);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Branch implements Branch {
  const _Branch({required this.id, required this.chainId, required this.name, required this.code, required this.active, this.address, this.city, this.contactName, this.contactPhone, this.beneficiaryName, this.ifsc, this.accountNumberMasked, this.accountNumber, this.payoutReady});
  factory _Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

@override final  String id;
@override final  String chainId;
@override final  String name;
@override final  String code;
@override final  bool active;
@override final  String? address;
@override final  String? city;
@override final  String? contactName;
@override final  String? contactPhone;
@override final  String? beneficiaryName;
@override final  String? ifsc;
@override final  String? accountNumberMasked;
@override final  String? accountNumber;
@override final  bool? payoutReady;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchCopyWith<_Branch> get copyWith => __$BranchCopyWithImpl<_Branch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Branch&&(identical(other.id, id) || other.id == id)&&(identical(other.chainId, chainId) || other.chainId == chainId)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.active, active) || other.active == active)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.ifsc, ifsc) || other.ifsc == ifsc)&&(identical(other.accountNumberMasked, accountNumberMasked) || other.accountNumberMasked == accountNumberMasked)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.payoutReady, payoutReady) || other.payoutReady == payoutReady));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chainId,name,code,active,address,city,contactName,contactPhone,beneficiaryName,ifsc,accountNumberMasked,accountNumber,payoutReady);

@override
String toString() {
  return 'Branch(id: $id, chainId: $chainId, name: $name, code: $code, active: $active, address: $address, city: $city, contactName: $contactName, contactPhone: $contactPhone, beneficiaryName: $beneficiaryName, ifsc: $ifsc, accountNumberMasked: $accountNumberMasked, accountNumber: $accountNumber, payoutReady: $payoutReady)';
}


}

/// @nodoc
abstract mixin class _$BranchCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$BranchCopyWith(_Branch value, $Res Function(_Branch) _then) = __$BranchCopyWithImpl;
@override @useResult
$Res call({
 String id, String chainId, String name, String code, bool active, String? address, String? city, String? contactName, String? contactPhone, String? beneficiaryName, String? ifsc, String? accountNumberMasked, String? accountNumber, bool? payoutReady
});




}
/// @nodoc
class __$BranchCopyWithImpl<$Res>
    implements _$BranchCopyWith<$Res> {
  __$BranchCopyWithImpl(this._self, this._then);

  final _Branch _self;
  final $Res Function(_Branch) _then;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chainId = null,Object? name = null,Object? code = null,Object? active = null,Object? address = freezed,Object? city = freezed,Object? contactName = freezed,Object? contactPhone = freezed,Object? beneficiaryName = freezed,Object? ifsc = freezed,Object? accountNumberMasked = freezed,Object? accountNumber = freezed,Object? payoutReady = freezed,}) {
  return _then(_Branch(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chainId: null == chainId ? _self.chainId : chainId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryName: freezed == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String?,ifsc: freezed == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String?,accountNumberMasked: freezed == accountNumberMasked ? _self.accountNumberMasked : accountNumberMasked // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,payoutReady: freezed == payoutReady ? _self.payoutReady : payoutReady // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
