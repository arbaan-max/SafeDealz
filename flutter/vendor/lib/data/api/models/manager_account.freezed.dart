// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manager_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ManagerAccount {

 String get id; String get email; AccountRole get role; String get branchId; String? get displayName; String? get phone; bool? get active; List<String>? get assignedBranchIds; int? get activeSessionCount;
/// Create a copy of ManagerAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManagerAccountCopyWith<ManagerAccount> get copyWith => _$ManagerAccountCopyWithImpl<ManagerAccount>(this as ManagerAccount, _$identity);

  /// Serializes this ManagerAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManagerAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.assignedBranchIds, assignedBranchIds)&&(identical(other.activeSessionCount, activeSessionCount) || other.activeSessionCount == activeSessionCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,branchId,displayName,phone,active,const DeepCollectionEquality().hash(assignedBranchIds),activeSessionCount);

@override
String toString() {
  return 'ManagerAccount(id: $id, email: $email, role: $role, branchId: $branchId, displayName: $displayName, phone: $phone, active: $active, assignedBranchIds: $assignedBranchIds, activeSessionCount: $activeSessionCount)';
}


}

/// @nodoc
abstract mixin class $ManagerAccountCopyWith<$Res>  {
  factory $ManagerAccountCopyWith(ManagerAccount value, $Res Function(ManagerAccount) _then) = _$ManagerAccountCopyWithImpl;
@useResult
$Res call({
 String id, String email, AccountRole role, String branchId, String? displayName, String? phone, bool? active, List<String>? assignedBranchIds, int? activeSessionCount
});




}
/// @nodoc
class _$ManagerAccountCopyWithImpl<$Res>
    implements $ManagerAccountCopyWith<$Res> {
  _$ManagerAccountCopyWithImpl(this._self, this._then);

  final ManagerAccount _self;
  final $Res Function(ManagerAccount) _then;

/// Create a copy of ManagerAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? role = null,Object? branchId = null,Object? displayName = freezed,Object? phone = freezed,Object? active = freezed,Object? assignedBranchIds = freezed,Object? activeSessionCount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AccountRole,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,assignedBranchIds: freezed == assignedBranchIds ? _self.assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>?,activeSessionCount: freezed == activeSessionCount ? _self.activeSessionCount : activeSessionCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ManagerAccount].
extension ManagerAccountPatterns on ManagerAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ManagerAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ManagerAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ManagerAccount value)  $default,){
final _that = this;
switch (_that) {
case _ManagerAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ManagerAccount value)?  $default,){
final _that = this;
switch (_that) {
case _ManagerAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  AccountRole role,  String branchId,  String? displayName,  String? phone,  bool? active,  List<String>? assignedBranchIds,  int? activeSessionCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ManagerAccount() when $default != null:
return $default(_that.id,_that.email,_that.role,_that.branchId,_that.displayName,_that.phone,_that.active,_that.assignedBranchIds,_that.activeSessionCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  AccountRole role,  String branchId,  String? displayName,  String? phone,  bool? active,  List<String>? assignedBranchIds,  int? activeSessionCount)  $default,) {final _that = this;
switch (_that) {
case _ManagerAccount():
return $default(_that.id,_that.email,_that.role,_that.branchId,_that.displayName,_that.phone,_that.active,_that.assignedBranchIds,_that.activeSessionCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  AccountRole role,  String branchId,  String? displayName,  String? phone,  bool? active,  List<String>? assignedBranchIds,  int? activeSessionCount)?  $default,) {final _that = this;
switch (_that) {
case _ManagerAccount() when $default != null:
return $default(_that.id,_that.email,_that.role,_that.branchId,_that.displayName,_that.phone,_that.active,_that.assignedBranchIds,_that.activeSessionCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ManagerAccount implements ManagerAccount {
  const _ManagerAccount({required this.id, required this.email, required this.role, required this.branchId, this.displayName, this.phone, this.active, final  List<String>? assignedBranchIds, this.activeSessionCount}): _assignedBranchIds = assignedBranchIds;
  factory _ManagerAccount.fromJson(Map<String, dynamic> json) => _$ManagerAccountFromJson(json);

@override final  String id;
@override final  String email;
@override final  AccountRole role;
@override final  String branchId;
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

@override final  int? activeSessionCount;

/// Create a copy of ManagerAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ManagerAccountCopyWith<_ManagerAccount> get copyWith => __$ManagerAccountCopyWithImpl<_ManagerAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ManagerAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ManagerAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._assignedBranchIds, _assignedBranchIds)&&(identical(other.activeSessionCount, activeSessionCount) || other.activeSessionCount == activeSessionCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,branchId,displayName,phone,active,const DeepCollectionEquality().hash(_assignedBranchIds),activeSessionCount);

@override
String toString() {
  return 'ManagerAccount(id: $id, email: $email, role: $role, branchId: $branchId, displayName: $displayName, phone: $phone, active: $active, assignedBranchIds: $assignedBranchIds, activeSessionCount: $activeSessionCount)';
}


}

/// @nodoc
abstract mixin class _$ManagerAccountCopyWith<$Res> implements $ManagerAccountCopyWith<$Res> {
  factory _$ManagerAccountCopyWith(_ManagerAccount value, $Res Function(_ManagerAccount) _then) = __$ManagerAccountCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, AccountRole role, String branchId, String? displayName, String? phone, bool? active, List<String>? assignedBranchIds, int? activeSessionCount
});




}
/// @nodoc
class __$ManagerAccountCopyWithImpl<$Res>
    implements _$ManagerAccountCopyWith<$Res> {
  __$ManagerAccountCopyWithImpl(this._self, this._then);

  final _ManagerAccount _self;
  final $Res Function(_ManagerAccount) _then;

/// Create a copy of ManagerAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? role = null,Object? branchId = null,Object? displayName = freezed,Object? phone = freezed,Object? active = freezed,Object? assignedBranchIds = freezed,Object? activeSessionCount = freezed,}) {
  return _then(_ManagerAccount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AccountRole,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,assignedBranchIds: freezed == assignedBranchIds ? _self._assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>?,activeSessionCount: freezed == activeSessionCount ? _self.activeSessionCount : activeSessionCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
