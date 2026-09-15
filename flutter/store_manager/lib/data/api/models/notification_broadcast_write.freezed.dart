// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_broadcast_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationBroadcastWrite {

 NotificationBroadcastWriteAudience get audience; String get title; String get body; String? get category; String? get branchId; String? get accountId;
/// Create a copy of NotificationBroadcastWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationBroadcastWriteCopyWith<NotificationBroadcastWrite> get copyWith => _$NotificationBroadcastWriteCopyWithImpl<NotificationBroadcastWrite>(this as NotificationBroadcastWrite, _$identity);

  /// Serializes this NotificationBroadcastWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationBroadcastWrite&&(identical(other.audience, audience) || other.audience == audience)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.category, category) || other.category == category)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.accountId, accountId) || other.accountId == accountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,audience,title,body,category,branchId,accountId);

@override
String toString() {
  return 'NotificationBroadcastWrite(audience: $audience, title: $title, body: $body, category: $category, branchId: $branchId, accountId: $accountId)';
}


}

/// @nodoc
abstract mixin class $NotificationBroadcastWriteCopyWith<$Res>  {
  factory $NotificationBroadcastWriteCopyWith(NotificationBroadcastWrite value, $Res Function(NotificationBroadcastWrite) _then) = _$NotificationBroadcastWriteCopyWithImpl;
@useResult
$Res call({
 NotificationBroadcastWriteAudience audience, String title, String body, String? category, String? branchId, String? accountId
});




}
/// @nodoc
class _$NotificationBroadcastWriteCopyWithImpl<$Res>
    implements $NotificationBroadcastWriteCopyWith<$Res> {
  _$NotificationBroadcastWriteCopyWithImpl(this._self, this._then);

  final NotificationBroadcastWrite _self;
  final $Res Function(NotificationBroadcastWrite) _then;

/// Create a copy of NotificationBroadcastWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? audience = null,Object? title = null,Object? body = null,Object? category = freezed,Object? branchId = freezed,Object? accountId = freezed,}) {
  return _then(_self.copyWith(
audience: null == audience ? _self.audience : audience // ignore: cast_nullable_to_non_nullable
as NotificationBroadcastWriteAudience,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationBroadcastWrite].
extension NotificationBroadcastWritePatterns on NotificationBroadcastWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationBroadcastWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationBroadcastWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationBroadcastWrite value)  $default,){
final _that = this;
switch (_that) {
case _NotificationBroadcastWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationBroadcastWrite value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationBroadcastWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NotificationBroadcastWriteAudience audience,  String title,  String body,  String? category,  String? branchId,  String? accountId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationBroadcastWrite() when $default != null:
return $default(_that.audience,_that.title,_that.body,_that.category,_that.branchId,_that.accountId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NotificationBroadcastWriteAudience audience,  String title,  String body,  String? category,  String? branchId,  String? accountId)  $default,) {final _that = this;
switch (_that) {
case _NotificationBroadcastWrite():
return $default(_that.audience,_that.title,_that.body,_that.category,_that.branchId,_that.accountId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NotificationBroadcastWriteAudience audience,  String title,  String body,  String? category,  String? branchId,  String? accountId)?  $default,) {final _that = this;
switch (_that) {
case _NotificationBroadcastWrite() when $default != null:
return $default(_that.audience,_that.title,_that.body,_that.category,_that.branchId,_that.accountId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationBroadcastWrite implements NotificationBroadcastWrite {
  const _NotificationBroadcastWrite({required this.audience, required this.title, required this.body, this.category, this.branchId, this.accountId});
  factory _NotificationBroadcastWrite.fromJson(Map<String, dynamic> json) => _$NotificationBroadcastWriteFromJson(json);

@override final  NotificationBroadcastWriteAudience audience;
@override final  String title;
@override final  String body;
@override final  String? category;
@override final  String? branchId;
@override final  String? accountId;

/// Create a copy of NotificationBroadcastWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationBroadcastWriteCopyWith<_NotificationBroadcastWrite> get copyWith => __$NotificationBroadcastWriteCopyWithImpl<_NotificationBroadcastWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationBroadcastWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationBroadcastWrite&&(identical(other.audience, audience) || other.audience == audience)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.category, category) || other.category == category)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.accountId, accountId) || other.accountId == accountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,audience,title,body,category,branchId,accountId);

@override
String toString() {
  return 'NotificationBroadcastWrite(audience: $audience, title: $title, body: $body, category: $category, branchId: $branchId, accountId: $accountId)';
}


}

/// @nodoc
abstract mixin class _$NotificationBroadcastWriteCopyWith<$Res> implements $NotificationBroadcastWriteCopyWith<$Res> {
  factory _$NotificationBroadcastWriteCopyWith(_NotificationBroadcastWrite value, $Res Function(_NotificationBroadcastWrite) _then) = __$NotificationBroadcastWriteCopyWithImpl;
@override @useResult
$Res call({
 NotificationBroadcastWriteAudience audience, String title, String body, String? category, String? branchId, String? accountId
});




}
/// @nodoc
class __$NotificationBroadcastWriteCopyWithImpl<$Res>
    implements _$NotificationBroadcastWriteCopyWith<$Res> {
  __$NotificationBroadcastWriteCopyWithImpl(this._self, this._then);

  final _NotificationBroadcastWrite _self;
  final $Res Function(_NotificationBroadcastWrite) _then;

/// Create a copy of NotificationBroadcastWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? audience = null,Object? title = null,Object? body = null,Object? category = freezed,Object? branchId = freezed,Object? accountId = freezed,}) {
  return _then(_NotificationBroadcastWrite(
audience: null == audience ? _self.audience : audience // ignore: cast_nullable_to_non_nullable
as NotificationBroadcastWriteAudience,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
