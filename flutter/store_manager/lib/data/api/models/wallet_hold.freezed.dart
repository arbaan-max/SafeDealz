// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_hold.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletHold {

 String? get id; int? get amountPaise; WalletHoldStatus? get status; String? get reason; String? get idempotencyKey; String? get referenceId; DateTime? get createdAt;
/// Create a copy of WalletHold
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletHoldCopyWith<WalletHold> get copyWith => _$WalletHoldCopyWithImpl<WalletHold>(this as WalletHold, _$identity);

  /// Serializes this WalletHold to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletHold&&(identical(other.id, id) || other.id == id)&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amountPaise,status,reason,idempotencyKey,referenceId,createdAt);

@override
String toString() {
  return 'WalletHold(id: $id, amountPaise: $amountPaise, status: $status, reason: $reason, idempotencyKey: $idempotencyKey, referenceId: $referenceId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $WalletHoldCopyWith<$Res>  {
  factory $WalletHoldCopyWith(WalletHold value, $Res Function(WalletHold) _then) = _$WalletHoldCopyWithImpl;
@useResult
$Res call({
 String? id, int? amountPaise, WalletHoldStatus? status, String? reason, String? idempotencyKey, String? referenceId, DateTime? createdAt
});




}
/// @nodoc
class _$WalletHoldCopyWithImpl<$Res>
    implements $WalletHoldCopyWith<$Res> {
  _$WalletHoldCopyWithImpl(this._self, this._then);

  final WalletHold _self;
  final $Res Function(WalletHold) _then;

/// Create a copy of WalletHold
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? amountPaise = freezed,Object? status = freezed,Object? reason = freezed,Object? idempotencyKey = freezed,Object? referenceId = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,amountPaise: freezed == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WalletHoldStatus?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,idempotencyKey: freezed == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletHold].
extension WalletHoldPatterns on WalletHold {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletHold value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletHold() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletHold value)  $default,){
final _that = this;
switch (_that) {
case _WalletHold():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletHold value)?  $default,){
final _that = this;
switch (_that) {
case _WalletHold() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  int? amountPaise,  WalletHoldStatus? status,  String? reason,  String? idempotencyKey,  String? referenceId,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletHold() when $default != null:
return $default(_that.id,_that.amountPaise,_that.status,_that.reason,_that.idempotencyKey,_that.referenceId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  int? amountPaise,  WalletHoldStatus? status,  String? reason,  String? idempotencyKey,  String? referenceId,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _WalletHold():
return $default(_that.id,_that.amountPaise,_that.status,_that.reason,_that.idempotencyKey,_that.referenceId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  int? amountPaise,  WalletHoldStatus? status,  String? reason,  String? idempotencyKey,  String? referenceId,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _WalletHold() when $default != null:
return $default(_that.id,_that.amountPaise,_that.status,_that.reason,_that.idempotencyKey,_that.referenceId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletHold implements WalletHold {
  const _WalletHold({this.id, this.amountPaise, this.status, this.reason, this.idempotencyKey, this.referenceId, this.createdAt});
  factory _WalletHold.fromJson(Map<String, dynamic> json) => _$WalletHoldFromJson(json);

@override final  String? id;
@override final  int? amountPaise;
@override final  WalletHoldStatus? status;
@override final  String? reason;
@override final  String? idempotencyKey;
@override final  String? referenceId;
@override final  DateTime? createdAt;

/// Create a copy of WalletHold
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletHoldCopyWith<_WalletHold> get copyWith => __$WalletHoldCopyWithImpl<_WalletHold>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletHoldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletHold&&(identical(other.id, id) || other.id == id)&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amountPaise,status,reason,idempotencyKey,referenceId,createdAt);

@override
String toString() {
  return 'WalletHold(id: $id, amountPaise: $amountPaise, status: $status, reason: $reason, idempotencyKey: $idempotencyKey, referenceId: $referenceId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$WalletHoldCopyWith<$Res> implements $WalletHoldCopyWith<$Res> {
  factory _$WalletHoldCopyWith(_WalletHold value, $Res Function(_WalletHold) _then) = __$WalletHoldCopyWithImpl;
@override @useResult
$Res call({
 String? id, int? amountPaise, WalletHoldStatus? status, String? reason, String? idempotencyKey, String? referenceId, DateTime? createdAt
});




}
/// @nodoc
class __$WalletHoldCopyWithImpl<$Res>
    implements _$WalletHoldCopyWith<$Res> {
  __$WalletHoldCopyWithImpl(this._self, this._then);

  final _WalletHold _self;
  final $Res Function(_WalletHold) _then;

/// Create a copy of WalletHold
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? amountPaise = freezed,Object? status = freezed,Object? reason = freezed,Object? idempotencyKey = freezed,Object? referenceId = freezed,Object? createdAt = freezed,}) {
  return _then(_WalletHold(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,amountPaise: freezed == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WalletHoldStatus?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,idempotencyKey: freezed == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
