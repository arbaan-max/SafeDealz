// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendorLink {

 String get email; List<String> get assignedBranchIds;
/// Create a copy of VendorLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorLinkCopyWith<VendorLink> get copyWith => _$VendorLinkCopyWithImpl<VendorLink>(this as VendorLink, _$identity);

  /// Serializes this VendorLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorLink&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.assignedBranchIds, assignedBranchIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,const DeepCollectionEquality().hash(assignedBranchIds));

@override
String toString() {
  return 'VendorLink(email: $email, assignedBranchIds: $assignedBranchIds)';
}


}

/// @nodoc
abstract mixin class $VendorLinkCopyWith<$Res>  {
  factory $VendorLinkCopyWith(VendorLink value, $Res Function(VendorLink) _then) = _$VendorLinkCopyWithImpl;
@useResult
$Res call({
 String email, List<String> assignedBranchIds
});




}
/// @nodoc
class _$VendorLinkCopyWithImpl<$Res>
    implements $VendorLinkCopyWith<$Res> {
  _$VendorLinkCopyWithImpl(this._self, this._then);

  final VendorLink _self;
  final $Res Function(VendorLink) _then;

/// Create a copy of VendorLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? assignedBranchIds = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,assignedBranchIds: null == assignedBranchIds ? _self.assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [VendorLink].
extension VendorLinkPatterns on VendorLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorLink value)  $default,){
final _that = this;
switch (_that) {
case _VendorLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorLink value)?  $default,){
final _that = this;
switch (_that) {
case _VendorLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  List<String> assignedBranchIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorLink() when $default != null:
return $default(_that.email,_that.assignedBranchIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  List<String> assignedBranchIds)  $default,) {final _that = this;
switch (_that) {
case _VendorLink():
return $default(_that.email,_that.assignedBranchIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  List<String> assignedBranchIds)?  $default,) {final _that = this;
switch (_that) {
case _VendorLink() when $default != null:
return $default(_that.email,_that.assignedBranchIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorLink implements VendorLink {
  const _VendorLink({required this.email, required final  List<String> assignedBranchIds}): _assignedBranchIds = assignedBranchIds;
  factory _VendorLink.fromJson(Map<String, dynamic> json) => _$VendorLinkFromJson(json);

@override final  String email;
 final  List<String> _assignedBranchIds;
@override List<String> get assignedBranchIds {
  if (_assignedBranchIds is EqualUnmodifiableListView) return _assignedBranchIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assignedBranchIds);
}


/// Create a copy of VendorLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorLinkCopyWith<_VendorLink> get copyWith => __$VendorLinkCopyWithImpl<_VendorLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorLink&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other._assignedBranchIds, _assignedBranchIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,const DeepCollectionEquality().hash(_assignedBranchIds));

@override
String toString() {
  return 'VendorLink(email: $email, assignedBranchIds: $assignedBranchIds)';
}


}

/// @nodoc
abstract mixin class _$VendorLinkCopyWith<$Res> implements $VendorLinkCopyWith<$Res> {
  factory _$VendorLinkCopyWith(_VendorLink value, $Res Function(_VendorLink) _then) = __$VendorLinkCopyWithImpl;
@override @useResult
$Res call({
 String email, List<String> assignedBranchIds
});




}
/// @nodoc
class __$VendorLinkCopyWithImpl<$Res>
    implements _$VendorLinkCopyWith<$Res> {
  __$VendorLinkCopyWithImpl(this._self, this._then);

  final _VendorLink _self;
  final $Res Function(_VendorLink) _then;

/// Create a copy of VendorLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? assignedBranchIds = null,}) {
  return _then(_VendorLink(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,assignedBranchIds: null == assignedBranchIds ? _self._assignedBranchIds : assignedBranchIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
