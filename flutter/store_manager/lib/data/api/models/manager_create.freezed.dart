// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manager_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ManagerCreate {

 String get displayName; String get email; String get password; String get branchId; String? get phone; bool? get active;
/// Create a copy of ManagerCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManagerCreateCopyWith<ManagerCreate> get copyWith => _$ManagerCreateCopyWithImpl<ManagerCreate>(this as ManagerCreate, _$identity);

  /// Serializes this ManagerCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManagerCreate&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,email,password,branchId,phone,active);

@override
String toString() {
  return 'ManagerCreate(displayName: $displayName, email: $email, password: $password, branchId: $branchId, phone: $phone, active: $active)';
}


}

/// @nodoc
abstract mixin class $ManagerCreateCopyWith<$Res>  {
  factory $ManagerCreateCopyWith(ManagerCreate value, $Res Function(ManagerCreate) _then) = _$ManagerCreateCopyWithImpl;
@useResult
$Res call({
 String displayName, String email, String password, String branchId, String? phone, bool? active
});




}
/// @nodoc
class _$ManagerCreateCopyWithImpl<$Res>
    implements $ManagerCreateCopyWith<$Res> {
  _$ManagerCreateCopyWithImpl(this._self, this._then);

  final ManagerCreate _self;
  final $Res Function(ManagerCreate) _then;

/// Create a copy of ManagerCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = null,Object? email = null,Object? password = null,Object? branchId = null,Object? phone = freezed,Object? active = freezed,}) {
  return _then(_self.copyWith(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ManagerCreate].
extension ManagerCreatePatterns on ManagerCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ManagerCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ManagerCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ManagerCreate value)  $default,){
final _that = this;
switch (_that) {
case _ManagerCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ManagerCreate value)?  $default,){
final _that = this;
switch (_that) {
case _ManagerCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String displayName,  String email,  String password,  String branchId,  String? phone,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ManagerCreate() when $default != null:
return $default(_that.displayName,_that.email,_that.password,_that.branchId,_that.phone,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String displayName,  String email,  String password,  String branchId,  String? phone,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _ManagerCreate():
return $default(_that.displayName,_that.email,_that.password,_that.branchId,_that.phone,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String displayName,  String email,  String password,  String branchId,  String? phone,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _ManagerCreate() when $default != null:
return $default(_that.displayName,_that.email,_that.password,_that.branchId,_that.phone,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ManagerCreate implements ManagerCreate {
  const _ManagerCreate({required this.displayName, required this.email, required this.password, required this.branchId, this.phone, this.active});
  factory _ManagerCreate.fromJson(Map<String, dynamic> json) => _$ManagerCreateFromJson(json);

@override final  String displayName;
@override final  String email;
@override final  String password;
@override final  String branchId;
@override final  String? phone;
@override final  bool? active;

/// Create a copy of ManagerCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ManagerCreateCopyWith<_ManagerCreate> get copyWith => __$ManagerCreateCopyWithImpl<_ManagerCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ManagerCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ManagerCreate&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,email,password,branchId,phone,active);

@override
String toString() {
  return 'ManagerCreate(displayName: $displayName, email: $email, password: $password, branchId: $branchId, phone: $phone, active: $active)';
}


}

/// @nodoc
abstract mixin class _$ManagerCreateCopyWith<$Res> implements $ManagerCreateCopyWith<$Res> {
  factory _$ManagerCreateCopyWith(_ManagerCreate value, $Res Function(_ManagerCreate) _then) = __$ManagerCreateCopyWithImpl;
@override @useResult
$Res call({
 String displayName, String email, String password, String branchId, String? phone, bool? active
});




}
/// @nodoc
class __$ManagerCreateCopyWithImpl<$Res>
    implements _$ManagerCreateCopyWith<$Res> {
  __$ManagerCreateCopyWithImpl(this._self, this._then);

  final _ManagerCreate _self;
  final $Res Function(_ManagerCreate) _then;

/// Create a copy of ManagerCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = null,Object? email = null,Object? password = null,Object? branchId = null,Object? phone = freezed,Object? active = freezed,}) {
  return _then(_ManagerCreate(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
