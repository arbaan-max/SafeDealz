// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminCreate {

 String get displayName; String get email; String get password; String? get phone; bool? get active; List<String>? get assignedBranchIds;
/// Create a copy of AdminCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminCreateCopyWith<AdminCreate> get copyWith => _$AdminCreateCopyWithImpl<AdminCreate>(this as AdminCreate, _$identity);

  /// Serializes this AdminCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminCreate&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.assignedBranchIds, assignedBranchIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,email,password,phone,active,const DeepCollectionEquality().hash(assignedBranchIds));

@override
String toString() {
  return 'AdminCreate(displayName: $displayName, email: $email, password: $password, phone: $phone, active: $active, assignedBranchIds: $assignedBranchIds)';
}


}

/// @nodoc
abstract mixin class $AdminCreateCopyWith<$Res>  {
  factory $AdminCreateCopyWith(AdminCreate value, $Res Function(AdminCreate) _then) = _$AdminCreateCopyWithImpl;
@useResult
$Res call({
 String displayName, String email, String password, String? phone, bool? active, List<String>? assignedBranchIds
});




}
/// @nodoc
class _$AdminCreateCopyWithImpl<$Res>
    implements $AdminCreateCopyWith<$Res> {
  _$AdminCreateCopyWithImpl(this._self, this._then);

  final AdminCreate _self;
  final $Res Function(AdminCreate) _then;

/// Create a copy of AdminCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = null,Object? email = null,Object? password = null,Object? phone = freezed,Object? active = freezed,Object? assignedBranchIds = freezed,}) {
  return _then(_self.copyWith(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,assignedBranchIds: freezed == assignedBranchIds ? _self.assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminCreate].
extension AdminCreatePatterns on AdminCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminCreate value)  $default,){
final _that = this;
switch (_that) {
case _AdminCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminCreate value)?  $default,){
final _that = this;
switch (_that) {
case _AdminCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String displayName,  String email,  String password,  String? phone,  bool? active,  List<String>? assignedBranchIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminCreate() when $default != null:
return $default(_that.displayName,_that.email,_that.password,_that.phone,_that.active,_that.assignedBranchIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String displayName,  String email,  String password,  String? phone,  bool? active,  List<String>? assignedBranchIds)  $default,) {final _that = this;
switch (_that) {
case _AdminCreate():
return $default(_that.displayName,_that.email,_that.password,_that.phone,_that.active,_that.assignedBranchIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String displayName,  String email,  String password,  String? phone,  bool? active,  List<String>? assignedBranchIds)?  $default,) {final _that = this;
switch (_that) {
case _AdminCreate() when $default != null:
return $default(_that.displayName,_that.email,_that.password,_that.phone,_that.active,_that.assignedBranchIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminCreate implements AdminCreate {
  const _AdminCreate({required this.displayName, required this.email, required this.password, this.phone, this.active, final  List<String>? assignedBranchIds}): _assignedBranchIds = assignedBranchIds;
  factory _AdminCreate.fromJson(Map<String, dynamic> json) => _$AdminCreateFromJson(json);

@override final  String displayName;
@override final  String email;
@override final  String password;
@override final  String? phone;
@override final  bool? active;
 final  List<String>? _assignedBranchIds;
@override List<String>? get assignedBranchIds {
  final value = _assignedBranchIds;
  if (value == null) return null;
  if (_assignedBranchIds is EqualUnmodifiableListView) return _assignedBranchIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AdminCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminCreateCopyWith<_AdminCreate> get copyWith => __$AdminCreateCopyWithImpl<_AdminCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminCreate&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._assignedBranchIds, _assignedBranchIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,email,password,phone,active,const DeepCollectionEquality().hash(_assignedBranchIds));

@override
String toString() {
  return 'AdminCreate(displayName: $displayName, email: $email, password: $password, phone: $phone, active: $active, assignedBranchIds: $assignedBranchIds)';
}


}

/// @nodoc
abstract mixin class _$AdminCreateCopyWith<$Res> implements $AdminCreateCopyWith<$Res> {
  factory _$AdminCreateCopyWith(_AdminCreate value, $Res Function(_AdminCreate) _then) = __$AdminCreateCopyWithImpl;
@override @useResult
$Res call({
 String displayName, String email, String password, String? phone, bool? active, List<String>? assignedBranchIds
});




}
/// @nodoc
class __$AdminCreateCopyWithImpl<$Res>
    implements _$AdminCreateCopyWith<$Res> {
  __$AdminCreateCopyWithImpl(this._self, this._then);

  final _AdminCreate _self;
  final $Res Function(_AdminCreate) _then;

/// Create a copy of AdminCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = null,Object? email = null,Object? password = null,Object? phone = freezed,Object? active = freezed,Object? assignedBranchIds = freezed,}) {
  return _then(_AdminCreate(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,assignedBranchIds: freezed == assignedBranchIds ? _self._assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
