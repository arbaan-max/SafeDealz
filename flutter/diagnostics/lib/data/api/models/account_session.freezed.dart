// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountSession {

 String? get id; String? get clientType; DateTime? get createdAt; DateTime? get expiresAt; DateTime? get revokedAt; bool? get current;
/// Create a copy of AccountSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountSessionCopyWith<AccountSession> get copyWith => _$AccountSessionCopyWithImpl<AccountSession>(this as AccountSession, _$identity);

  /// Serializes this AccountSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountSession&&(identical(other.id, id) || other.id == id)&&(identical(other.clientType, clientType) || other.clientType == clientType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.revokedAt, revokedAt) || other.revokedAt == revokedAt)&&(identical(other.current, current) || other.current == current));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,clientType,createdAt,expiresAt,revokedAt,current);

@override
String toString() {
  return 'AccountSession(id: $id, clientType: $clientType, createdAt: $createdAt, expiresAt: $expiresAt, revokedAt: $revokedAt, current: $current)';
}


}

/// @nodoc
abstract mixin class $AccountSessionCopyWith<$Res>  {
  factory $AccountSessionCopyWith(AccountSession value, $Res Function(AccountSession) _then) = _$AccountSessionCopyWithImpl;
@useResult
$Res call({
 String? id, String? clientType, DateTime? createdAt, DateTime? expiresAt, DateTime? revokedAt, bool? current
});




}
/// @nodoc
class _$AccountSessionCopyWithImpl<$Res>
    implements $AccountSessionCopyWith<$Res> {
  _$AccountSessionCopyWithImpl(this._self, this._then);

  final AccountSession _self;
  final $Res Function(AccountSession) _then;

/// Create a copy of AccountSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? clientType = freezed,Object? createdAt = freezed,Object? expiresAt = freezed,Object? revokedAt = freezed,Object? current = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,clientType: freezed == clientType ? _self.clientType : clientType // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,revokedAt: freezed == revokedAt ? _self.revokedAt : revokedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountSession].
extension AccountSessionPatterns on AccountSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountSession value)  $default,){
final _that = this;
switch (_that) {
case _AccountSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountSession value)?  $default,){
final _that = this;
switch (_that) {
case _AccountSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? clientType,  DateTime? createdAt,  DateTime? expiresAt,  DateTime? revokedAt,  bool? current)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountSession() when $default != null:
return $default(_that.id,_that.clientType,_that.createdAt,_that.expiresAt,_that.revokedAt,_that.current);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? clientType,  DateTime? createdAt,  DateTime? expiresAt,  DateTime? revokedAt,  bool? current)  $default,) {final _that = this;
switch (_that) {
case _AccountSession():
return $default(_that.id,_that.clientType,_that.createdAt,_that.expiresAt,_that.revokedAt,_that.current);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? clientType,  DateTime? createdAt,  DateTime? expiresAt,  DateTime? revokedAt,  bool? current)?  $default,) {final _that = this;
switch (_that) {
case _AccountSession() when $default != null:
return $default(_that.id,_that.clientType,_that.createdAt,_that.expiresAt,_that.revokedAt,_that.current);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountSession implements AccountSession {
  const _AccountSession({this.id, this.clientType, this.createdAt, this.expiresAt, this.revokedAt, this.current});
  factory _AccountSession.fromJson(Map<String, dynamic> json) => _$AccountSessionFromJson(json);

@override final  String? id;
@override final  String? clientType;
@override final  DateTime? createdAt;
@override final  DateTime? expiresAt;
@override final  DateTime? revokedAt;
@override final  bool? current;

/// Create a copy of AccountSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountSessionCopyWith<_AccountSession> get copyWith => __$AccountSessionCopyWithImpl<_AccountSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountSessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountSession&&(identical(other.id, id) || other.id == id)&&(identical(other.clientType, clientType) || other.clientType == clientType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.revokedAt, revokedAt) || other.revokedAt == revokedAt)&&(identical(other.current, current) || other.current == current));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,clientType,createdAt,expiresAt,revokedAt,current);

@override
String toString() {
  return 'AccountSession(id: $id, clientType: $clientType, createdAt: $createdAt, expiresAt: $expiresAt, revokedAt: $revokedAt, current: $current)';
}


}

/// @nodoc
abstract mixin class _$AccountSessionCopyWith<$Res> implements $AccountSessionCopyWith<$Res> {
  factory _$AccountSessionCopyWith(_AccountSession value, $Res Function(_AccountSession) _then) = __$AccountSessionCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? clientType, DateTime? createdAt, DateTime? expiresAt, DateTime? revokedAt, bool? current
});




}
/// @nodoc
class __$AccountSessionCopyWithImpl<$Res>
    implements _$AccountSessionCopyWith<$Res> {
  __$AccountSessionCopyWithImpl(this._self, this._then);

  final _AccountSession _self;
  final $Res Function(_AccountSession) _then;

/// Create a copy of AccountSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? clientType = freezed,Object? createdAt = freezed,Object? expiresAt = freezed,Object? revokedAt = freezed,Object? current = freezed,}) {
  return _then(_AccountSession(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,clientType: freezed == clientType ? _self.clientType : clientType // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,revokedAt: freezed == revokedAt ? _self.revokedAt : revokedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
