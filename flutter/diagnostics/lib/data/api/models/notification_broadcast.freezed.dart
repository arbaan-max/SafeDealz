// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_broadcast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationBroadcast {

 String? get campaignId; int? get delivered; List<Notification>? get deliveries;
/// Create a copy of NotificationBroadcast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationBroadcastCopyWith<NotificationBroadcast> get copyWith => _$NotificationBroadcastCopyWithImpl<NotificationBroadcast>(this as NotificationBroadcast, _$identity);

  /// Serializes this NotificationBroadcast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationBroadcast&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.delivered, delivered) || other.delivered == delivered)&&const DeepCollectionEquality().equals(other.deliveries, deliveries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaignId,delivered,const DeepCollectionEquality().hash(deliveries));

@override
String toString() {
  return 'NotificationBroadcast(campaignId: $campaignId, delivered: $delivered, deliveries: $deliveries)';
}


}

/// @nodoc
abstract mixin class $NotificationBroadcastCopyWith<$Res>  {
  factory $NotificationBroadcastCopyWith(NotificationBroadcast value, $Res Function(NotificationBroadcast) _then) = _$NotificationBroadcastCopyWithImpl;
@useResult
$Res call({
 String? campaignId, int? delivered, List<Notification>? deliveries
});




}
/// @nodoc
class _$NotificationBroadcastCopyWithImpl<$Res>
    implements $NotificationBroadcastCopyWith<$Res> {
  _$NotificationBroadcastCopyWithImpl(this._self, this._then);

  final NotificationBroadcast _self;
  final $Res Function(NotificationBroadcast) _then;

/// Create a copy of NotificationBroadcast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? campaignId = freezed,Object? delivered = freezed,Object? deliveries = freezed,}) {
  return _then(_self.copyWith(
campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,delivered: freezed == delivered ? _self.delivered : delivered // ignore: cast_nullable_to_non_nullable
as int?,deliveries: freezed == deliveries ? _self.deliveries : deliveries // ignore: cast_nullable_to_non_nullable
as List<Notification>?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationBroadcast].
extension NotificationBroadcastPatterns on NotificationBroadcast {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationBroadcast value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationBroadcast() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationBroadcast value)  $default,){
final _that = this;
switch (_that) {
case _NotificationBroadcast():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationBroadcast value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationBroadcast() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? campaignId,  int? delivered,  List<Notification>? deliveries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationBroadcast() when $default != null:
return $default(_that.campaignId,_that.delivered,_that.deliveries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? campaignId,  int? delivered,  List<Notification>? deliveries)  $default,) {final _that = this;
switch (_that) {
case _NotificationBroadcast():
return $default(_that.campaignId,_that.delivered,_that.deliveries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? campaignId,  int? delivered,  List<Notification>? deliveries)?  $default,) {final _that = this;
switch (_that) {
case _NotificationBroadcast() when $default != null:
return $default(_that.campaignId,_that.delivered,_that.deliveries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationBroadcast implements NotificationBroadcast {
  const _NotificationBroadcast({this.campaignId, this.delivered, final  List<Notification>? deliveries}): _deliveries = deliveries;
  factory _NotificationBroadcast.fromJson(Map<String, dynamic> json) => _$NotificationBroadcastFromJson(json);

@override final  String? campaignId;
@override final  int? delivered;
 final  List<Notification>? _deliveries;
@override List<Notification>? get deliveries {
  final value = _deliveries;
  if (value == null) return null;
  if (_deliveries is EqualUnmodifiableListView) return _deliveries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of NotificationBroadcast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationBroadcastCopyWith<_NotificationBroadcast> get copyWith => __$NotificationBroadcastCopyWithImpl<_NotificationBroadcast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationBroadcastToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationBroadcast&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.delivered, delivered) || other.delivered == delivered)&&const DeepCollectionEquality().equals(other._deliveries, _deliveries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaignId,delivered,const DeepCollectionEquality().hash(_deliveries));

@override
String toString() {
  return 'NotificationBroadcast(campaignId: $campaignId, delivered: $delivered, deliveries: $deliveries)';
}


}

/// @nodoc
abstract mixin class _$NotificationBroadcastCopyWith<$Res> implements $NotificationBroadcastCopyWith<$Res> {
  factory _$NotificationBroadcastCopyWith(_NotificationBroadcast value, $Res Function(_NotificationBroadcast) _then) = __$NotificationBroadcastCopyWithImpl;
@override @useResult
$Res call({
 String? campaignId, int? delivered, List<Notification>? deliveries
});




}
/// @nodoc
class __$NotificationBroadcastCopyWithImpl<$Res>
    implements _$NotificationBroadcastCopyWith<$Res> {
  __$NotificationBroadcastCopyWithImpl(this._self, this._then);

  final _NotificationBroadcast _self;
  final $Res Function(_NotificationBroadcast) _then;

/// Create a copy of NotificationBroadcast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaignId = freezed,Object? delivered = freezed,Object? deliveries = freezed,}) {
  return _then(_NotificationBroadcast(
campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,delivered: freezed == delivered ? _self.delivered : delivered // ignore: cast_nullable_to_non_nullable
as int?,deliveries: freezed == deliveries ? _self._deliveries : deliveries // ignore: cast_nullable_to_non_nullable
as List<Notification>?,
  ));
}


}

// dart format on
