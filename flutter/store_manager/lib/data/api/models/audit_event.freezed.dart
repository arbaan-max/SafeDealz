// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuditEvent {

 String? get id; String? get actorId; String? get actorRole; String? get action; String? get entityType; String? get entityId; String? get storeId; DateTime? get createdAt; dynamic get metadata;
/// Create a copy of AuditEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuditEventCopyWith<AuditEvent> get copyWith => _$AuditEventCopyWithImpl<AuditEvent>(this as AuditEvent, _$identity);

  /// Serializes this AuditEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuditEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.actorRole, actorRole) || other.actorRole == actorRole)&&(identical(other.action, action) || other.action == action)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actorId,actorRole,action,entityType,entityId,storeId,createdAt,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'AuditEvent(id: $id, actorId: $actorId, actorRole: $actorRole, action: $action, entityType: $entityType, entityId: $entityId, storeId: $storeId, createdAt: $createdAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $AuditEventCopyWith<$Res>  {
  factory $AuditEventCopyWith(AuditEvent value, $Res Function(AuditEvent) _then) = _$AuditEventCopyWithImpl;
@useResult
$Res call({
 String? id, String? actorId, String? actorRole, String? action, String? entityType, String? entityId, String? storeId, DateTime? createdAt, dynamic metadata
});




}
/// @nodoc
class _$AuditEventCopyWithImpl<$Res>
    implements $AuditEventCopyWith<$Res> {
  _$AuditEventCopyWithImpl(this._self, this._then);

  final AuditEvent _self;
  final $Res Function(AuditEvent) _then;

/// Create a copy of AuditEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? actorId = freezed,Object? actorRole = freezed,Object? action = freezed,Object? entityType = freezed,Object? entityId = freezed,Object? storeId = freezed,Object? createdAt = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,actorId: freezed == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String?,actorRole: freezed == actorRole ? _self.actorRole : actorRole // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String?,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [AuditEvent].
extension AuditEventPatterns on AuditEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuditEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuditEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuditEvent value)  $default,){
final _that = this;
switch (_that) {
case _AuditEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuditEvent value)?  $default,){
final _that = this;
switch (_that) {
case _AuditEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? actorId,  String? actorRole,  String? action,  String? entityType,  String? entityId,  String? storeId,  DateTime? createdAt,  dynamic metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuditEvent() when $default != null:
return $default(_that.id,_that.actorId,_that.actorRole,_that.action,_that.entityType,_that.entityId,_that.storeId,_that.createdAt,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? actorId,  String? actorRole,  String? action,  String? entityType,  String? entityId,  String? storeId,  DateTime? createdAt,  dynamic metadata)  $default,) {final _that = this;
switch (_that) {
case _AuditEvent():
return $default(_that.id,_that.actorId,_that.actorRole,_that.action,_that.entityType,_that.entityId,_that.storeId,_that.createdAt,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? actorId,  String? actorRole,  String? action,  String? entityType,  String? entityId,  String? storeId,  DateTime? createdAt,  dynamic metadata)?  $default,) {final _that = this;
switch (_that) {
case _AuditEvent() when $default != null:
return $default(_that.id,_that.actorId,_that.actorRole,_that.action,_that.entityType,_that.entityId,_that.storeId,_that.createdAt,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuditEvent implements AuditEvent {
  const _AuditEvent({this.id, this.actorId, this.actorRole, this.action, this.entityType, this.entityId, this.storeId, this.createdAt, this.metadata});
  factory _AuditEvent.fromJson(Map<String, dynamic> json) => _$AuditEventFromJson(json);

@override final  String? id;
@override final  String? actorId;
@override final  String? actorRole;
@override final  String? action;
@override final  String? entityType;
@override final  String? entityId;
@override final  String? storeId;
@override final  DateTime? createdAt;
@override final  dynamic metadata;

/// Create a copy of AuditEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuditEventCopyWith<_AuditEvent> get copyWith => __$AuditEventCopyWithImpl<_AuditEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuditEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuditEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.actorRole, actorRole) || other.actorRole == actorRole)&&(identical(other.action, action) || other.action == action)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actorId,actorRole,action,entityType,entityId,storeId,createdAt,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'AuditEvent(id: $id, actorId: $actorId, actorRole: $actorRole, action: $action, entityType: $entityType, entityId: $entityId, storeId: $storeId, createdAt: $createdAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$AuditEventCopyWith<$Res> implements $AuditEventCopyWith<$Res> {
  factory _$AuditEventCopyWith(_AuditEvent value, $Res Function(_AuditEvent) _then) = __$AuditEventCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? actorId, String? actorRole, String? action, String? entityType, String? entityId, String? storeId, DateTime? createdAt, dynamic metadata
});




}
/// @nodoc
class __$AuditEventCopyWithImpl<$Res>
    implements _$AuditEventCopyWith<$Res> {
  __$AuditEventCopyWithImpl(this._self, this._then);

  final _AuditEvent _self;
  final $Res Function(_AuditEvent) _then;

/// Create a copy of AuditEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? actorId = freezed,Object? actorRole = freezed,Object? action = freezed,Object? entityType = freezed,Object? entityId = freezed,Object? storeId = freezed,Object? createdAt = freezed,Object? metadata = freezed,}) {
  return _then(_AuditEvent(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,actorId: freezed == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String?,actorRole: freezed == actorRole ? _self.actorRole : actorRole // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String?,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
