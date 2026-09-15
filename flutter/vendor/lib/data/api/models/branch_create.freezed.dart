// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BranchCreate {

 String get chainId; String get name; String get code; String get beneficiaryName; String get accountNumber; String get ifsc; String? get address; String? get city; String? get contactName; String? get contactPhone; bool? get active;
/// Create a copy of BranchCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchCreateCopyWith<BranchCreate> get copyWith => _$BranchCreateCopyWithImpl<BranchCreate>(this as BranchCreate, _$identity);

  /// Serializes this BranchCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchCreate&&(identical(other.chainId, chainId) || other.chainId == chainId)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.ifsc, ifsc) || other.ifsc == ifsc)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chainId,name,code,beneficiaryName,accountNumber,ifsc,address,city,contactName,contactPhone,active);

@override
String toString() {
  return 'BranchCreate(chainId: $chainId, name: $name, code: $code, beneficiaryName: $beneficiaryName, accountNumber: $accountNumber, ifsc: $ifsc, address: $address, city: $city, contactName: $contactName, contactPhone: $contactPhone, active: $active)';
}


}

/// @nodoc
abstract mixin class $BranchCreateCopyWith<$Res>  {
  factory $BranchCreateCopyWith(BranchCreate value, $Res Function(BranchCreate) _then) = _$BranchCreateCopyWithImpl;
@useResult
$Res call({
 String chainId, String name, String code, String beneficiaryName, String accountNumber, String ifsc, String? address, String? city, String? contactName, String? contactPhone, bool? active
});




}
/// @nodoc
class _$BranchCreateCopyWithImpl<$Res>
    implements $BranchCreateCopyWith<$Res> {
  _$BranchCreateCopyWithImpl(this._self, this._then);

  final BranchCreate _self;
  final $Res Function(BranchCreate) _then;

/// Create a copy of BranchCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chainId = null,Object? name = null,Object? code = null,Object? beneficiaryName = null,Object? accountNumber = null,Object? ifsc = null,Object? address = freezed,Object? city = freezed,Object? contactName = freezed,Object? contactPhone = freezed,Object? active = freezed,}) {
  return _then(_self.copyWith(
chainId: null == chainId ? _self.chainId : chainId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,beneficiaryName: null == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,ifsc: null == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [BranchCreate].
extension BranchCreatePatterns on BranchCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchCreate value)  $default,){
final _that = this;
switch (_that) {
case _BranchCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchCreate value)?  $default,){
final _that = this;
switch (_that) {
case _BranchCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String chainId,  String name,  String code,  String beneficiaryName,  String accountNumber,  String ifsc,  String? address,  String? city,  String? contactName,  String? contactPhone,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchCreate() when $default != null:
return $default(_that.chainId,_that.name,_that.code,_that.beneficiaryName,_that.accountNumber,_that.ifsc,_that.address,_that.city,_that.contactName,_that.contactPhone,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String chainId,  String name,  String code,  String beneficiaryName,  String accountNumber,  String ifsc,  String? address,  String? city,  String? contactName,  String? contactPhone,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _BranchCreate():
return $default(_that.chainId,_that.name,_that.code,_that.beneficiaryName,_that.accountNumber,_that.ifsc,_that.address,_that.city,_that.contactName,_that.contactPhone,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String chainId,  String name,  String code,  String beneficiaryName,  String accountNumber,  String ifsc,  String? address,  String? city,  String? contactName,  String? contactPhone,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _BranchCreate() when $default != null:
return $default(_that.chainId,_that.name,_that.code,_that.beneficiaryName,_that.accountNumber,_that.ifsc,_that.address,_that.city,_that.contactName,_that.contactPhone,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchCreate implements BranchCreate {
  const _BranchCreate({required this.chainId, required this.name, required this.code, required this.beneficiaryName, required this.accountNumber, required this.ifsc, this.address, this.city, this.contactName, this.contactPhone, this.active});
  factory _BranchCreate.fromJson(Map<String, dynamic> json) => _$BranchCreateFromJson(json);

@override final  String chainId;
@override final  String name;
@override final  String code;
@override final  String beneficiaryName;
@override final  String accountNumber;
@override final  String ifsc;
@override final  String? address;
@override final  String? city;
@override final  String? contactName;
@override final  String? contactPhone;
@override final  bool? active;

/// Create a copy of BranchCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchCreateCopyWith<_BranchCreate> get copyWith => __$BranchCreateCopyWithImpl<_BranchCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchCreate&&(identical(other.chainId, chainId) || other.chainId == chainId)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.ifsc, ifsc) || other.ifsc == ifsc)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chainId,name,code,beneficiaryName,accountNumber,ifsc,address,city,contactName,contactPhone,active);

@override
String toString() {
  return 'BranchCreate(chainId: $chainId, name: $name, code: $code, beneficiaryName: $beneficiaryName, accountNumber: $accountNumber, ifsc: $ifsc, address: $address, city: $city, contactName: $contactName, contactPhone: $contactPhone, active: $active)';
}


}

/// @nodoc
abstract mixin class _$BranchCreateCopyWith<$Res> implements $BranchCreateCopyWith<$Res> {
  factory _$BranchCreateCopyWith(_BranchCreate value, $Res Function(_BranchCreate) _then) = __$BranchCreateCopyWithImpl;
@override @useResult
$Res call({
 String chainId, String name, String code, String beneficiaryName, String accountNumber, String ifsc, String? address, String? city, String? contactName, String? contactPhone, bool? active
});




}
/// @nodoc
class __$BranchCreateCopyWithImpl<$Res>
    implements _$BranchCreateCopyWith<$Res> {
  __$BranchCreateCopyWithImpl(this._self, this._then);

  final _BranchCreate _self;
  final $Res Function(_BranchCreate) _then;

/// Create a copy of BranchCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chainId = null,Object? name = null,Object? code = null,Object? beneficiaryName = null,Object? accountNumber = null,Object? ifsc = null,Object? address = freezed,Object? city = freezed,Object? contactName = freezed,Object? contactPhone = freezed,Object? active = freezed,}) {
  return _then(_BranchCreate(
chainId: null == chainId ? _self.chainId : chainId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,beneficiaryName: null == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,ifsc: null == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
