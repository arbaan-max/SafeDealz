// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_revoke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionRevoke {

 String? get id; bool? get revoked;
/// Create a copy of SessionRevoke
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionRevokeCopyWith<SessionRevoke> get copyWith => _$SessionRevokeCopyWithImpl<SessionRevoke>(this as SessionRevoke, _$identity);

  /// Serializes this SessionRevoke to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionRevoke&&(identical(other.id, id) || other.id == id)&&(identical(other.revoked, revoked) || other.revoked == revoked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,revoked);

@override
String toString() {
  return 'SessionRevoke(id: $id, revoked: $revoked)';
}


}

/// @nodoc
abstract mixin class $SessionRevokeCopyWith<$Res>  {
  factory $SessionRevokeCopyWith(SessionRevoke value, $Res Function(SessionRevoke) _then) = _$SessionRevokeCopyWithImpl;
@useResult
$Res call({
 String? id, bool? revoked
});




}
/// @nodoc
class _$SessionRevokeCopyWithImpl<$Res>
    implements $SessionRevokeCopyWith<$Res> {
  _$SessionRevokeCopyWithImpl(this._self, this._then);

  final SessionRevoke _self;
  final $Res Function(SessionRevoke) _then;

/// Create a copy of SessionRevoke
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? revoked = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,revoked: freezed == revoked ? _self.revoked : revoked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionRevoke].
extension SessionRevokePatterns on SessionRevoke {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionRevoke value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionRevoke() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionRevoke value)  $default,){
final _that = this;
switch (_that) {
case _SessionRevoke():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionRevoke value)?  $default,){
final _that = this;
switch (_that) {
case _SessionRevoke() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  bool? revoked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionRevoke() when $default != null:
return $default(_that.id,_that.revoked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  bool? revoked)  $default,) {final _that = this;
switch (_that) {
case _SessionRevoke():
return $default(_that.id,_that.revoked);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  bool? revoked)?  $default,) {final _that = this;
switch (_that) {
case _SessionRevoke() when $default != null:
return $default(_that.id,_that.revoked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionRevoke implements SessionRevoke {
  const _SessionRevoke({this.id, this.revoked});
  factory _SessionRevoke.fromJson(Map<String, dynamic> json) => _$SessionRevokeFromJson(json);

@override final  String? id;
@override final  bool? revoked;

/// Create a copy of SessionRevoke
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionRevokeCopyWith<_SessionRevoke> get copyWith => __$SessionRevokeCopyWithImpl<_SessionRevoke>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionRevokeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionRevoke&&(identical(other.id, id) || other.id == id)&&(identical(other.revoked, revoked) || other.revoked == revoked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,revoked);

@override
String toString() {
  return 'SessionRevoke(id: $id, revoked: $revoked)';
}


}

/// @nodoc
abstract mixin class _$SessionRevokeCopyWith<$Res> implements $SessionRevokeCopyWith<$Res> {
  factory _$SessionRevokeCopyWith(_SessionRevoke value, $Res Function(_SessionRevoke) _then) = __$SessionRevokeCopyWithImpl;
@override @useResult
$Res call({
 String? id, bool? revoked
});




}
/// @nodoc
class __$SessionRevokeCopyWithImpl<$Res>
    implements _$SessionRevokeCopyWith<$Res> {
  __$SessionRevokeCopyWithImpl(this._self, this._then);

  final _SessionRevoke _self;
  final $Res Function(_SessionRevoke) _then;

/// Create a copy of SessionRevoke
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? revoked = freezed,}) {
  return _then(_SessionRevoke(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,revoked: freezed == revoked ? _self.revoked : revoked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
