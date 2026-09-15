// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Notification {

 String? get id; String? get title; String? get body; String? get category; String? get audience; NotificationStatus? get status; String? get deepLink; String? get branchId; String? get campaignId; DateTime? get readAt; DateTime? get createdAt; String? get recipientAccountId; String? get recipientRole;
/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCopyWith<Notification> get copyWith => _$NotificationCopyWithImpl<Notification>(this as Notification, _$identity);

  /// Serializes this Notification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notification&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.category, category) || other.category == category)&&(identical(other.audience, audience) || other.audience == audience)&&(identical(other.status, status) || other.status == status)&&(identical(other.deepLink, deepLink) || other.deepLink == deepLink)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.recipientAccountId, recipientAccountId) || other.recipientAccountId == recipientAccountId)&&(identical(other.recipientRole, recipientRole) || other.recipientRole == recipientRole));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,body,category,audience,status,deepLink,branchId,campaignId,readAt,createdAt,recipientAccountId,recipientRole);

@override
String toString() {
  return 'Notification(id: $id, title: $title, body: $body, category: $category, audience: $audience, status: $status, deepLink: $deepLink, branchId: $branchId, campaignId: $campaignId, readAt: $readAt, createdAt: $createdAt, recipientAccountId: $recipientAccountId, recipientRole: $recipientRole)';
}


}

/// @nodoc
abstract mixin class $NotificationCopyWith<$Res>  {
  factory $NotificationCopyWith(Notification value, $Res Function(Notification) _then) = _$NotificationCopyWithImpl;
@useResult
$Res call({
 String? id, String? title, String? body, String? category, String? audience, NotificationStatus? status, String? deepLink, String? branchId, String? campaignId, DateTime? readAt, DateTime? createdAt, String? recipientAccountId, String? recipientRole
});




}
/// @nodoc
class _$NotificationCopyWithImpl<$Res>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._self, this._then);

  final Notification _self;
  final $Res Function(Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? body = freezed,Object? category = freezed,Object? audience = freezed,Object? status = freezed,Object? deepLink = freezed,Object? branchId = freezed,Object? campaignId = freezed,Object? readAt = freezed,Object? createdAt = freezed,Object? recipientAccountId = freezed,Object? recipientRole = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,audience: freezed == audience ? _self.audience : audience // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NotificationStatus?,deepLink: freezed == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recipientAccountId: freezed == recipientAccountId ? _self.recipientAccountId : recipientAccountId // ignore: cast_nullable_to_non_nullable
as String?,recipientRole: freezed == recipientRole ? _self.recipientRole : recipientRole // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Notification].
extension NotificationPatterns on Notification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Notification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Notification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Notification value)  $default,){
final _that = this;
switch (_that) {
case _Notification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Notification value)?  $default,){
final _that = this;
switch (_that) {
case _Notification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? title,  String? body,  String? category,  String? audience,  NotificationStatus? status,  String? deepLink,  String? branchId,  String? campaignId,  DateTime? readAt,  DateTime? createdAt,  String? recipientAccountId,  String? recipientRole)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.category,_that.audience,_that.status,_that.deepLink,_that.branchId,_that.campaignId,_that.readAt,_that.createdAt,_that.recipientAccountId,_that.recipientRole);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? title,  String? body,  String? category,  String? audience,  NotificationStatus? status,  String? deepLink,  String? branchId,  String? campaignId,  DateTime? readAt,  DateTime? createdAt,  String? recipientAccountId,  String? recipientRole)  $default,) {final _that = this;
switch (_that) {
case _Notification():
return $default(_that.id,_that.title,_that.body,_that.category,_that.audience,_that.status,_that.deepLink,_that.branchId,_that.campaignId,_that.readAt,_that.createdAt,_that.recipientAccountId,_that.recipientRole);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? title,  String? body,  String? category,  String? audience,  NotificationStatus? status,  String? deepLink,  String? branchId,  String? campaignId,  DateTime? readAt,  DateTime? createdAt,  String? recipientAccountId,  String? recipientRole)?  $default,) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.category,_that.audience,_that.status,_that.deepLink,_that.branchId,_that.campaignId,_that.readAt,_that.createdAt,_that.recipientAccountId,_that.recipientRole);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Notification implements Notification {
  const _Notification({this.id, this.title, this.body, this.category, this.audience, this.status, this.deepLink, this.branchId, this.campaignId, this.readAt, this.createdAt, this.recipientAccountId, this.recipientRole});
  factory _Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);

@override final  String? id;
@override final  String? title;
@override final  String? body;
@override final  String? category;
@override final  String? audience;
@override final  NotificationStatus? status;
@override final  String? deepLink;
@override final  String? branchId;
@override final  String? campaignId;
@override final  DateTime? readAt;
@override final  DateTime? createdAt;
@override final  String? recipientAccountId;
@override final  String? recipientRole;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationCopyWith<_Notification> get copyWith => __$NotificationCopyWithImpl<_Notification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notification&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.category, category) || other.category == category)&&(identical(other.audience, audience) || other.audience == audience)&&(identical(other.status, status) || other.status == status)&&(identical(other.deepLink, deepLink) || other.deepLink == deepLink)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.recipientAccountId, recipientAccountId) || other.recipientAccountId == recipientAccountId)&&(identical(other.recipientRole, recipientRole) || other.recipientRole == recipientRole));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,body,category,audience,status,deepLink,branchId,campaignId,readAt,createdAt,recipientAccountId,recipientRole);

@override
String toString() {
  return 'Notification(id: $id, title: $title, body: $body, category: $category, audience: $audience, status: $status, deepLink: $deepLink, branchId: $branchId, campaignId: $campaignId, readAt: $readAt, createdAt: $createdAt, recipientAccountId: $recipientAccountId, recipientRole: $recipientRole)';
}


}

/// @nodoc
abstract mixin class _$NotificationCopyWith<$Res> implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(_Notification value, $Res Function(_Notification) _then) = __$NotificationCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title, String? body, String? category, String? audience, NotificationStatus? status, String? deepLink, String? branchId, String? campaignId, DateTime? readAt, DateTime? createdAt, String? recipientAccountId, String? recipientRole
});




}
/// @nodoc
class __$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(this._self, this._then);

  final _Notification _self;
  final $Res Function(_Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? body = freezed,Object? category = freezed,Object? audience = freezed,Object? status = freezed,Object? deepLink = freezed,Object? branchId = freezed,Object? campaignId = freezed,Object? readAt = freezed,Object? createdAt = freezed,Object? recipientAccountId = freezed,Object? recipientRole = freezed,}) {
  return _then(_Notification(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,audience: freezed == audience ? _self.audience : audience // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NotificationStatus?,deepLink: freezed == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recipientAccountId: freezed == recipientAccountId ? _self.recipientAccountId : recipientAccountId // ignore: cast_nullable_to_non_nullable
as String?,recipientRole: freezed == recipientRole ? _self.recipientRole : recipientRole // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
