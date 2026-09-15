// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manager_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ManagerUpdate {

 String? get displayName; String? get phone; String? get password; String? get branchId; bool? get active; bool? get revokeSessions;
/// Create a copy of ManagerUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManagerUpdateCopyWith<ManagerUpdate> get copyWith => _$ManagerUpdateCopyWithImpl<ManagerUpdate>(this as ManagerUpdate, _$identity);

  /// Serializes this ManagerUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManagerUpdate&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.active, active) || other.active == active)&&(identical(other.revokeSessions, revokeSessions) || other.revokeSessions == revokeSessions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,phone,password,branchId,active,revokeSessions);

@override
String toString() {
  return 'ManagerUpdate(displayName: $displayName, phone: $phone, password: $password, branchId: $branchId, active: $active, revokeSessions: $revokeSessions)';
}


}

/// @nodoc
abstract mixin class $ManagerUpdateCopyWith<$Res>  {
  factory $ManagerUpdateCopyWith(ManagerUpdate value, $Res Function(ManagerUpdate) _then) = _$ManagerUpdateCopyWithImpl;
@useResult
$Res call({
 String? displayName, String? phone, String? password, String? branchId, bool? active, bool? revokeSessions
});




}
/// @nodoc
class _$ManagerUpdateCopyWithImpl<$Res>
    implements $ManagerUpdateCopyWith<$Res> {
  _$ManagerUpdateCopyWithImpl(this._self, this._then);

  final ManagerUpdate _self;
  final $Res Function(ManagerUpdate) _then;

/// Create a copy of ManagerUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = freezed,Object? phone = freezed,Object? password = freezed,Object? branchId = freezed,Object? active = freezed,Object? revokeSessions = freezed,}) {
  return _then(_self.copyWith(
displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,revokeSessions: freezed == revokeSessions ? _self.revokeSessions : revokeSessions // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ManagerUpdate].
extension ManagerUpdatePatterns on ManagerUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ManagerUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ManagerUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ManagerUpdate value)  $default,){
final _that = this;
switch (_that) {
case _ManagerUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ManagerUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _ManagerUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? displayName,  String? phone,  String? password,  String? branchId,  bool? active,  bool? revokeSessions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ManagerUpdate() when $default != null:
return $default(_that.displayName,_that.phone,_that.password,_that.branchId,_that.active,_that.revokeSessions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? displayName,  String? phone,  String? password,  String? branchId,  bool? active,  bool? revokeSessions)  $default,) {final _that = this;
switch (_that) {
case _ManagerUpdate():
return $default(_that.displayName,_that.phone,_that.password,_that.branchId,_that.active,_that.revokeSessions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? displayName,  String? phone,  String? password,  String? branchId,  bool? active,  bool? revokeSessions)?  $default,) {final _that = this;
switch (_that) {
case _ManagerUpdate() when $default != null:
return $default(_that.displayName,_that.phone,_that.password,_that.branchId,_that.active,_that.revokeSessions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ManagerUpdate implements ManagerUpdate {
  const _ManagerUpdate({this.displayName, this.phone, this.password, this.branchId, this.active, this.revokeSessions});
  factory _ManagerUpdate.fromJson(Map<String, dynamic> json) => _$ManagerUpdateFromJson(json);

@override final  String? displayName;
@override final  String? phone;
@override final  String? password;
@override final  String? branchId;
@override final  bool? active;
@override final  bool? revokeSessions;

/// Create a copy of ManagerUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ManagerUpdateCopyWith<_ManagerUpdate> get copyWith => __$ManagerUpdateCopyWithImpl<_ManagerUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ManagerUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ManagerUpdate&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.active, active) || other.active == active)&&(identical(other.revokeSessions, revokeSessions) || other.revokeSessions == revokeSessions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,phone,password,branchId,active,revokeSessions);

@override
String toString() {
  return 'ManagerUpdate(displayName: $displayName, phone: $phone, password: $password, branchId: $branchId, active: $active, revokeSessions: $revokeSessions)';
}


}

/// @nodoc
abstract mixin class _$ManagerUpdateCopyWith<$Res> implements $ManagerUpdateCopyWith<$Res> {
  factory _$ManagerUpdateCopyWith(_ManagerUpdate value, $Res Function(_ManagerUpdate) _then) = __$ManagerUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? displayName, String? phone, String? password, String? branchId, bool? active, bool? revokeSessions
});




}
/// @nodoc
class __$ManagerUpdateCopyWithImpl<$Res>
    implements _$ManagerUpdateCopyWith<$Res> {
  __$ManagerUpdateCopyWithImpl(this._self, this._then);

  final _ManagerUpdate _self;
  final $Res Function(_ManagerUpdate) _then;

/// Create a copy of ManagerUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = freezed,Object? phone = freezed,Object? password = freezed,Object? branchId = freezed,Object? active = freezed,Object? revokeSessions = freezed,}) {
  return _then(_ManagerUpdate(
displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,revokeSessions: freezed == revokeSessions ? _self.revokeSessions : revokeSessions // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
