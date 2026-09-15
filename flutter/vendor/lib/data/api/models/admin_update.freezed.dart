// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminUpdate {

 String? get displayName; String? get phone; String? get password; bool? get active; List<String>? get assignedBranchIds;
/// Create a copy of AdminUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminUpdateCopyWith<AdminUpdate> get copyWith => _$AdminUpdateCopyWithImpl<AdminUpdate>(this as AdminUpdate, _$identity);

  /// Serializes this AdminUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminUpdate&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.assignedBranchIds, assignedBranchIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,phone,password,active,const DeepCollectionEquality().hash(assignedBranchIds));

@override
String toString() {
  return 'AdminUpdate(displayName: $displayName, phone: $phone, password: $password, active: $active, assignedBranchIds: $assignedBranchIds)';
}


}

/// @nodoc
abstract mixin class $AdminUpdateCopyWith<$Res>  {
  factory $AdminUpdateCopyWith(AdminUpdate value, $Res Function(AdminUpdate) _then) = _$AdminUpdateCopyWithImpl;
@useResult
$Res call({
 String? displayName, String? phone, String? password, bool? active, List<String>? assignedBranchIds
});




}
/// @nodoc
class _$AdminUpdateCopyWithImpl<$Res>
    implements $AdminUpdateCopyWith<$Res> {
  _$AdminUpdateCopyWithImpl(this._self, this._then);

  final AdminUpdate _self;
  final $Res Function(AdminUpdate) _then;

/// Create a copy of AdminUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = freezed,Object? phone = freezed,Object? password = freezed,Object? active = freezed,Object? assignedBranchIds = freezed,}) {
  return _then(_self.copyWith(
displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,assignedBranchIds: freezed == assignedBranchIds ? _self.assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminUpdate].
extension AdminUpdatePatterns on AdminUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminUpdate value)  $default,){
final _that = this;
switch (_that) {
case _AdminUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _AdminUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? displayName,  String? phone,  String? password,  bool? active,  List<String>? assignedBranchIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminUpdate() when $default != null:
return $default(_that.displayName,_that.phone,_that.password,_that.active,_that.assignedBranchIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? displayName,  String? phone,  String? password,  bool? active,  List<String>? assignedBranchIds)  $default,) {final _that = this;
switch (_that) {
case _AdminUpdate():
return $default(_that.displayName,_that.phone,_that.password,_that.active,_that.assignedBranchIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? displayName,  String? phone,  String? password,  bool? active,  List<String>? assignedBranchIds)?  $default,) {final _that = this;
switch (_that) {
case _AdminUpdate() when $default != null:
return $default(_that.displayName,_that.phone,_that.password,_that.active,_that.assignedBranchIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminUpdate implements AdminUpdate {
  const _AdminUpdate({this.displayName, this.phone, this.password, this.active, final  List<String>? assignedBranchIds}): _assignedBranchIds = assignedBranchIds;
  factory _AdminUpdate.fromJson(Map<String, dynamic> json) => _$AdminUpdateFromJson(json);

@override final  String? displayName;
@override final  String? phone;
@override final  String? password;
@override final  bool? active;
 final  List<String>? _assignedBranchIds;
@override List<String>? get assignedBranchIds {
  final value = _assignedBranchIds;
  if (value == null) return null;
  if (_assignedBranchIds is EqualUnmodifiableListView) return _assignedBranchIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AdminUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminUpdateCopyWith<_AdminUpdate> get copyWith => __$AdminUpdateCopyWithImpl<_AdminUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminUpdate&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._assignedBranchIds, _assignedBranchIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,phone,password,active,const DeepCollectionEquality().hash(_assignedBranchIds));

@override
String toString() {
  return 'AdminUpdate(displayName: $displayName, phone: $phone, password: $password, active: $active, assignedBranchIds: $assignedBranchIds)';
}


}

/// @nodoc
abstract mixin class _$AdminUpdateCopyWith<$Res> implements $AdminUpdateCopyWith<$Res> {
  factory _$AdminUpdateCopyWith(_AdminUpdate value, $Res Function(_AdminUpdate) _then) = __$AdminUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? displayName, String? phone, String? password, bool? active, List<String>? assignedBranchIds
});




}
/// @nodoc
class __$AdminUpdateCopyWithImpl<$Res>
    implements _$AdminUpdateCopyWith<$Res> {
  __$AdminUpdateCopyWithImpl(this._self, this._then);

  final _AdminUpdate _self;
  final $Res Function(_AdminUpdate) _then;

/// Create a copy of AdminUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = freezed,Object? phone = freezed,Object? password = freezed,Object? active = freezed,Object? assignedBranchIds = freezed,}) {
  return _then(_AdminUpdate(
displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,assignedBranchIds: freezed == assignedBranchIds ? _self._assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
