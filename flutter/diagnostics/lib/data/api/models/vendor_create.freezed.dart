// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendorCreate {

 String get displayName; String get email; String get password; List<String> get assignedBranchIds; String? get phone; bool? get active;
/// Create a copy of VendorCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorCreateCopyWith<VendorCreate> get copyWith => _$VendorCreateCopyWithImpl<VendorCreate>(this as VendorCreate, _$identity);

  /// Serializes this VendorCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorCreate&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&const DeepCollectionEquality().equals(other.assignedBranchIds, assignedBranchIds)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,email,password,const DeepCollectionEquality().hash(assignedBranchIds),phone,active);

@override
String toString() {
  return 'VendorCreate(displayName: $displayName, email: $email, password: $password, assignedBranchIds: $assignedBranchIds, phone: $phone, active: $active)';
}


}

/// @nodoc
abstract mixin class $VendorCreateCopyWith<$Res>  {
  factory $VendorCreateCopyWith(VendorCreate value, $Res Function(VendorCreate) _then) = _$VendorCreateCopyWithImpl;
@useResult
$Res call({
 String displayName, String email, String password, List<String> assignedBranchIds, String? phone, bool? active
});




}
/// @nodoc
class _$VendorCreateCopyWithImpl<$Res>
    implements $VendorCreateCopyWith<$Res> {
  _$VendorCreateCopyWithImpl(this._self, this._then);

  final VendorCreate _self;
  final $Res Function(VendorCreate) _then;

/// Create a copy of VendorCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = null,Object? email = null,Object? password = null,Object? assignedBranchIds = null,Object? phone = freezed,Object? active = freezed,}) {
  return _then(_self.copyWith(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,assignedBranchIds: null == assignedBranchIds ? _self.assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [VendorCreate].
extension VendorCreatePatterns on VendorCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorCreate value)  $default,){
final _that = this;
switch (_that) {
case _VendorCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorCreate value)?  $default,){
final _that = this;
switch (_that) {
case _VendorCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String displayName,  String email,  String password,  List<String> assignedBranchIds,  String? phone,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorCreate() when $default != null:
return $default(_that.displayName,_that.email,_that.password,_that.assignedBranchIds,_that.phone,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String displayName,  String email,  String password,  List<String> assignedBranchIds,  String? phone,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _VendorCreate():
return $default(_that.displayName,_that.email,_that.password,_that.assignedBranchIds,_that.phone,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String displayName,  String email,  String password,  List<String> assignedBranchIds,  String? phone,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _VendorCreate() when $default != null:
return $default(_that.displayName,_that.email,_that.password,_that.assignedBranchIds,_that.phone,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorCreate implements VendorCreate {
  const _VendorCreate({required this.displayName, required this.email, required this.password, required final  List<String> assignedBranchIds, this.phone, this.active}): _assignedBranchIds = assignedBranchIds;
  factory _VendorCreate.fromJson(Map<String, dynamic> json) => _$VendorCreateFromJson(json);

@override final  String displayName;
@override final  String email;
@override final  String password;
 final  List<String> _assignedBranchIds;
@override List<String> get assignedBranchIds {
  if (_assignedBranchIds is EqualUnmodifiableListView) return _assignedBranchIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assignedBranchIds);
}

@override final  String? phone;
@override final  bool? active;

/// Create a copy of VendorCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorCreateCopyWith<_VendorCreate> get copyWith => __$VendorCreateCopyWithImpl<_VendorCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorCreate&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&const DeepCollectionEquality().equals(other._assignedBranchIds, _assignedBranchIds)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,email,password,const DeepCollectionEquality().hash(_assignedBranchIds),phone,active);

@override
String toString() {
  return 'VendorCreate(displayName: $displayName, email: $email, password: $password, assignedBranchIds: $assignedBranchIds, phone: $phone, active: $active)';
}


}

/// @nodoc
abstract mixin class _$VendorCreateCopyWith<$Res> implements $VendorCreateCopyWith<$Res> {
  factory _$VendorCreateCopyWith(_VendorCreate value, $Res Function(_VendorCreate) _then) = __$VendorCreateCopyWithImpl;
@override @useResult
$Res call({
 String displayName, String email, String password, List<String> assignedBranchIds, String? phone, bool? active
});




}
/// @nodoc
class __$VendorCreateCopyWithImpl<$Res>
    implements _$VendorCreateCopyWith<$Res> {
  __$VendorCreateCopyWithImpl(this._self, this._then);

  final _VendorCreate _self;
  final $Res Function(_VendorCreate) _then;

/// Create a copy of VendorCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = null,Object? email = null,Object? password = null,Object? assignedBranchIds = null,Object? phone = freezed,Object? active = freezed,}) {
  return _then(_VendorCreate(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,assignedBranchIds: null == assignedBranchIds ? _self._assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
