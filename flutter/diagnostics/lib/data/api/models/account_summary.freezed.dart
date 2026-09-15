// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountSummary {

 String get id; String get email; AccountRole get role; String? get displayName; String? get phone; bool? get active; List<String>? get assignedBranchIds; bool? get allStores;
/// Create a copy of AccountSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountSummaryCopyWith<AccountSummary> get copyWith => _$AccountSummaryCopyWithImpl<AccountSummary>(this as AccountSummary, _$identity);

  /// Serializes this AccountSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.assignedBranchIds, assignedBranchIds)&&(identical(other.allStores, allStores) || other.allStores == allStores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,displayName,phone,active,const DeepCollectionEquality().hash(assignedBranchIds),allStores);

@override
String toString() {
  return 'AccountSummary(id: $id, email: $email, role: $role, displayName: $displayName, phone: $phone, active: $active, assignedBranchIds: $assignedBranchIds, allStores: $allStores)';
}


}

/// @nodoc
abstract mixin class $AccountSummaryCopyWith<$Res>  {
  factory $AccountSummaryCopyWith(AccountSummary value, $Res Function(AccountSummary) _then) = _$AccountSummaryCopyWithImpl;
@useResult
$Res call({
 String id, String email, AccountRole role, String? displayName, String? phone, bool? active, List<String>? assignedBranchIds, bool? allStores
});




}
/// @nodoc
class _$AccountSummaryCopyWithImpl<$Res>
    implements $AccountSummaryCopyWith<$Res> {
  _$AccountSummaryCopyWithImpl(this._self, this._then);

  final AccountSummary _self;
  final $Res Function(AccountSummary) _then;

/// Create a copy of AccountSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? role = null,Object? displayName = freezed,Object? phone = freezed,Object? active = freezed,Object? assignedBranchIds = freezed,Object? allStores = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AccountRole,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,assignedBranchIds: freezed == assignedBranchIds ? _self.assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>?,allStores: freezed == allStores ? _self.allStores : allStores // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountSummary].
extension AccountSummaryPatterns on AccountSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountSummary value)  $default,){
final _that = this;
switch (_that) {
case _AccountSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountSummary value)?  $default,){
final _that = this;
switch (_that) {
case _AccountSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  AccountRole role,  String? displayName,  String? phone,  bool? active,  List<String>? assignedBranchIds,  bool? allStores)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountSummary() when $default != null:
return $default(_that.id,_that.email,_that.role,_that.displayName,_that.phone,_that.active,_that.assignedBranchIds,_that.allStores);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  AccountRole role,  String? displayName,  String? phone,  bool? active,  List<String>? assignedBranchIds,  bool? allStores)  $default,) {final _that = this;
switch (_that) {
case _AccountSummary():
return $default(_that.id,_that.email,_that.role,_that.displayName,_that.phone,_that.active,_that.assignedBranchIds,_that.allStores);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  AccountRole role,  String? displayName,  String? phone,  bool? active,  List<String>? assignedBranchIds,  bool? allStores)?  $default,) {final _that = this;
switch (_that) {
case _AccountSummary() when $default != null:
return $default(_that.id,_that.email,_that.role,_that.displayName,_that.phone,_that.active,_that.assignedBranchIds,_that.allStores);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountSummary implements AccountSummary {
  const _AccountSummary({required this.id, required this.email, required this.role, this.displayName, this.phone, this.active, final  List<String>? assignedBranchIds, this.allStores}): _assignedBranchIds = assignedBranchIds;
  factory _AccountSummary.fromJson(Map<String, dynamic> json) => _$AccountSummaryFromJson(json);

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

@override final  bool? allStores;

/// Create a copy of AccountSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountSummaryCopyWith<_AccountSummary> get copyWith => __$AccountSummaryCopyWithImpl<_AccountSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._assignedBranchIds, _assignedBranchIds)&&(identical(other.allStores, allStores) || other.allStores == allStores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,displayName,phone,active,const DeepCollectionEquality().hash(_assignedBranchIds),allStores);

@override
String toString() {
  return 'AccountSummary(id: $id, email: $email, role: $role, displayName: $displayName, phone: $phone, active: $active, assignedBranchIds: $assignedBranchIds, allStores: $allStores)';
}


}

/// @nodoc
abstract mixin class _$AccountSummaryCopyWith<$Res> implements $AccountSummaryCopyWith<$Res> {
  factory _$AccountSummaryCopyWith(_AccountSummary value, $Res Function(_AccountSummary) _then) = __$AccountSummaryCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, AccountRole role, String? displayName, String? phone, bool? active, List<String>? assignedBranchIds, bool? allStores
});




}
/// @nodoc
class __$AccountSummaryCopyWithImpl<$Res>
    implements _$AccountSummaryCopyWith<$Res> {
  __$AccountSummaryCopyWithImpl(this._self, this._then);

  final _AccountSummary _self;
  final $Res Function(_AccountSummary) _then;

/// Create a copy of AccountSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? role = null,Object? displayName = freezed,Object? phone = freezed,Object? active = freezed,Object? assignedBranchIds = freezed,Object? allStores = freezed,}) {
  return _then(_AccountSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AccountRole,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,assignedBranchIds: freezed == assignedBranchIds ? _self._assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>?,allStores: freezed == allStores ? _self.allStores : allStores // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
