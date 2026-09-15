// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminAccount {

 String get id; String get email; AccountRole get role; String? get displayName; String? get phone; bool? get active; List<String>? get assignedBranchIds;
/// Create a copy of AdminAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminAccountCopyWith<AdminAccount> get copyWith => _$AdminAccountCopyWithImpl<AdminAccount>(this as AdminAccount, _$identity);

  /// Serializes this AdminAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.assignedBranchIds, assignedBranchIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,displayName,phone,active,const DeepCollectionEquality().hash(assignedBranchIds));

@override
String toString() {
  return 'AdminAccount(id: $id, email: $email, role: $role, displayName: $displayName, phone: $phone, active: $active, assignedBranchIds: $assignedBranchIds)';
}


}

/// @nodoc
abstract mixin class $AdminAccountCopyWith<$Res>  {
  factory $AdminAccountCopyWith(AdminAccount value, $Res Function(AdminAccount) _then) = _$AdminAccountCopyWithImpl;
@useResult
$Res call({
 String id, String email, AccountRole role, String? displayName, String? phone, bool? active, List<String>? assignedBranchIds
});




}
/// @nodoc
class _$AdminAccountCopyWithImpl<$Res>
    implements $AdminAccountCopyWith<$Res> {
  _$AdminAccountCopyWithImpl(this._self, this._then);

  final AdminAccount _self;
  final $Res Function(AdminAccount) _then;

/// Create a copy of AdminAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? role = null,Object? displayName = freezed,Object? phone = freezed,Object? active = freezed,Object? assignedBranchIds = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AccountRole,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,assignedBranchIds: freezed == assignedBranchIds ? _self.assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminAccount].
extension AdminAccountPatterns on AdminAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminAccount value)  $default,){
final _that = this;
switch (_that) {
case _AdminAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminAccount value)?  $default,){
final _that = this;
switch (_that) {
case _AdminAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  AccountRole role,  String? displayName,  String? phone,  bool? active,  List<String>? assignedBranchIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminAccount() when $default != null:
return $default(_that.id,_that.email,_that.role,_that.displayName,_that.phone,_that.active,_that.assignedBranchIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  AccountRole role,  String? displayName,  String? phone,  bool? active,  List<String>? assignedBranchIds)  $default,) {final _that = this;
switch (_that) {
case _AdminAccount():
return $default(_that.id,_that.email,_that.role,_that.displayName,_that.phone,_that.active,_that.assignedBranchIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  AccountRole role,  String? displayName,  String? phone,  bool? active,  List<String>? assignedBranchIds)?  $default,) {final _that = this;
switch (_that) {
case _AdminAccount() when $default != null:
return $default(_that.id,_that.email,_that.role,_that.displayName,_that.phone,_that.active,_that.assignedBranchIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminAccount implements AdminAccount {
  const _AdminAccount({required this.id, required this.email, required this.role, this.displayName, this.phone, this.active, final  List<String>? assignedBranchIds}): _assignedBranchIds = assignedBranchIds;
  factory _AdminAccount.fromJson(Map<String, dynamic> json) => _$AdminAccountFromJson(json);

@override final  String id;
@override final  String email;
@override final  AccountRole role;
@override final  String? displayName;
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


/// Create a copy of AdminAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminAccountCopyWith<_AdminAccount> get copyWith => __$AdminAccountCopyWithImpl<_AdminAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._assignedBranchIds, _assignedBranchIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,displayName,phone,active,const DeepCollectionEquality().hash(_assignedBranchIds));

@override
String toString() {
  return 'AdminAccount(id: $id, email: $email, role: $role, displayName: $displayName, phone: $phone, active: $active, assignedBranchIds: $assignedBranchIds)';
}


}

/// @nodoc
abstract mixin class _$AdminAccountCopyWith<$Res> implements $AdminAccountCopyWith<$Res> {
  factory _$AdminAccountCopyWith(_AdminAccount value, $Res Function(_AdminAccount) _then) = __$AdminAccountCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, AccountRole role, String? displayName, String? phone, bool? active, List<String>? assignedBranchIds
});




}
/// @nodoc
class __$AdminAccountCopyWithImpl<$Res>
    implements _$AdminAccountCopyWith<$Res> {
  __$AdminAccountCopyWithImpl(this._self, this._then);

  final _AdminAccount _self;
  final $Res Function(_AdminAccount) _then;

/// Create a copy of AdminAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? role = null,Object? displayName = freezed,Object? phone = freezed,Object? active = freezed,Object? assignedBranchIds = freezed,}) {
  return _then(_AdminAccount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AccountRole,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,assignedBranchIds: freezed == assignedBranchIds ? _self._assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
