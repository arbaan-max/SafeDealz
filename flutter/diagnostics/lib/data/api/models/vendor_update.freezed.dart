// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendorUpdate {

 String? get displayName; String? get phone; String? get password; List<String>? get assignedBranchIds; bool? get active;
/// Create a copy of VendorUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorUpdateCopyWith<VendorUpdate> get copyWith => _$VendorUpdateCopyWithImpl<VendorUpdate>(this as VendorUpdate, _$identity);

  /// Serializes this VendorUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorUpdate&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&const DeepCollectionEquality().equals(other.assignedBranchIds, assignedBranchIds)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,phone,password,const DeepCollectionEquality().hash(assignedBranchIds),active);

@override
String toString() {
  return 'VendorUpdate(displayName: $displayName, phone: $phone, password: $password, assignedBranchIds: $assignedBranchIds, active: $active)';
}


}

/// @nodoc
abstract mixin class $VendorUpdateCopyWith<$Res>  {
  factory $VendorUpdateCopyWith(VendorUpdate value, $Res Function(VendorUpdate) _then) = _$VendorUpdateCopyWithImpl;
@useResult
$Res call({
 String? displayName, String? phone, String? password, List<String>? assignedBranchIds, bool? active
});




}
/// @nodoc
class _$VendorUpdateCopyWithImpl<$Res>
    implements $VendorUpdateCopyWith<$Res> {
  _$VendorUpdateCopyWithImpl(this._self, this._then);

  final VendorUpdate _self;
  final $Res Function(VendorUpdate) _then;

/// Create a copy of VendorUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = freezed,Object? phone = freezed,Object? password = freezed,Object? assignedBranchIds = freezed,Object? active = freezed,}) {
  return _then(_self.copyWith(
displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,assignedBranchIds: freezed == assignedBranchIds ? _self.assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [VendorUpdate].
extension VendorUpdatePatterns on VendorUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorUpdate value)  $default,){
final _that = this;
switch (_that) {
case _VendorUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _VendorUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? displayName,  String? phone,  String? password,  List<String>? assignedBranchIds,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorUpdate() when $default != null:
return $default(_that.displayName,_that.phone,_that.password,_that.assignedBranchIds,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? displayName,  String? phone,  String? password,  List<String>? assignedBranchIds,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _VendorUpdate():
return $default(_that.displayName,_that.phone,_that.password,_that.assignedBranchIds,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? displayName,  String? phone,  String? password,  List<String>? assignedBranchIds,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _VendorUpdate() when $default != null:
return $default(_that.displayName,_that.phone,_that.password,_that.assignedBranchIds,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorUpdate implements VendorUpdate {
  const _VendorUpdate({this.displayName, this.phone, this.password, final  List<String>? assignedBranchIds, this.active}): _assignedBranchIds = assignedBranchIds;
  factory _VendorUpdate.fromJson(Map<String, dynamic> json) => _$VendorUpdateFromJson(json);

@override final  String? displayName;
@override final  String? phone;
@override final  String? password;
 final  List<String>? _assignedBranchIds;
@override List<String>? get assignedBranchIds {
  final value = _assignedBranchIds;
  if (value == null) return null;
  if (_assignedBranchIds is EqualUnmodifiableListView) return _assignedBranchIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? active;

/// Create a copy of VendorUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorUpdateCopyWith<_VendorUpdate> get copyWith => __$VendorUpdateCopyWithImpl<_VendorUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorUpdate&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&const DeepCollectionEquality().equals(other._assignedBranchIds, _assignedBranchIds)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,phone,password,const DeepCollectionEquality().hash(_assignedBranchIds),active);

@override
String toString() {
  return 'VendorUpdate(displayName: $displayName, phone: $phone, password: $password, assignedBranchIds: $assignedBranchIds, active: $active)';
}


}

/// @nodoc
abstract mixin class _$VendorUpdateCopyWith<$Res> implements $VendorUpdateCopyWith<$Res> {
  factory _$VendorUpdateCopyWith(_VendorUpdate value, $Res Function(_VendorUpdate) _then) = __$VendorUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? displayName, String? phone, String? password, List<String>? assignedBranchIds, bool? active
});




}
/// @nodoc
class __$VendorUpdateCopyWithImpl<$Res>
    implements _$VendorUpdateCopyWith<$Res> {
  __$VendorUpdateCopyWithImpl(this._self, this._then);

  final _VendorUpdate _self;
  final $Res Function(_VendorUpdate) _then;

/// Create a copy of VendorUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = freezed,Object? phone = freezed,Object? password = freezed,Object? assignedBranchIds = freezed,Object? active = freezed,}) {
  return _then(_VendorUpdate(
displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,assignedBranchIds: freezed == assignedBranchIds ? _self._assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
