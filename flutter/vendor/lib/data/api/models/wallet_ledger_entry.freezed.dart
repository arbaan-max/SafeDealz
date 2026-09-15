// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_ledger_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletLedgerEntry {

 String? get id; WalletLedgerEntryType? get type; int? get amountPaise; int? get availableAfterPaise; int? get reservedAfterPaise; String? get reason; String? get referenceId; DateTime? get createdAt;
/// Create a copy of WalletLedgerEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletLedgerEntryCopyWith<WalletLedgerEntry> get copyWith => _$WalletLedgerEntryCopyWithImpl<WalletLedgerEntry>(this as WalletLedgerEntry, _$identity);

  /// Serializes this WalletLedgerEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletLedgerEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.availableAfterPaise, availableAfterPaise) || other.availableAfterPaise == availableAfterPaise)&&(identical(other.reservedAfterPaise, reservedAfterPaise) || other.reservedAfterPaise == reservedAfterPaise)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,amountPaise,availableAfterPaise,reservedAfterPaise,reason,referenceId,createdAt);

@override
String toString() {
  return 'WalletLedgerEntry(id: $id, type: $type, amountPaise: $amountPaise, availableAfterPaise: $availableAfterPaise, reservedAfterPaise: $reservedAfterPaise, reason: $reason, referenceId: $referenceId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $WalletLedgerEntryCopyWith<$Res>  {
  factory $WalletLedgerEntryCopyWith(WalletLedgerEntry value, $Res Function(WalletLedgerEntry) _then) = _$WalletLedgerEntryCopyWithImpl;
@useResult
$Res call({
 String? id, WalletLedgerEntryType? type, int? amountPaise, int? availableAfterPaise, int? reservedAfterPaise, String? reason, String? referenceId, DateTime? createdAt
});




}
/// @nodoc
class _$WalletLedgerEntryCopyWithImpl<$Res>
    implements $WalletLedgerEntryCopyWith<$Res> {
  _$WalletLedgerEntryCopyWithImpl(this._self, this._then);

  final WalletLedgerEntry _self;
  final $Res Function(WalletLedgerEntry) _then;

/// Create a copy of WalletLedgerEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? amountPaise = freezed,Object? availableAfterPaise = freezed,Object? reservedAfterPaise = freezed,Object? reason = freezed,Object? referenceId = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WalletLedgerEntryType?,amountPaise: freezed == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int?,availableAfterPaise: freezed == availableAfterPaise ? _self.availableAfterPaise : availableAfterPaise // ignore: cast_nullable_to_non_nullable
as int?,reservedAfterPaise: freezed == reservedAfterPaise ? _self.reservedAfterPaise : reservedAfterPaise // ignore: cast_nullable_to_non_nullable
as int?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletLedgerEntry].
extension WalletLedgerEntryPatterns on WalletLedgerEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletLedgerEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletLedgerEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletLedgerEntry value)  $default,){
final _that = this;
switch (_that) {
case _WalletLedgerEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletLedgerEntry value)?  $default,){
final _that = this;
switch (_that) {
case _WalletLedgerEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  WalletLedgerEntryType? type,  int? amountPaise,  int? availableAfterPaise,  int? reservedAfterPaise,  String? reason,  String? referenceId,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletLedgerEntry() when $default != null:
return $default(_that.id,_that.type,_that.amountPaise,_that.availableAfterPaise,_that.reservedAfterPaise,_that.reason,_that.referenceId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  WalletLedgerEntryType? type,  int? amountPaise,  int? availableAfterPaise,  int? reservedAfterPaise,  String? reason,  String? referenceId,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _WalletLedgerEntry():
return $default(_that.id,_that.type,_that.amountPaise,_that.availableAfterPaise,_that.reservedAfterPaise,_that.reason,_that.referenceId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  WalletLedgerEntryType? type,  int? amountPaise,  int? availableAfterPaise,  int? reservedAfterPaise,  String? reason,  String? referenceId,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _WalletLedgerEntry() when $default != null:
return $default(_that.id,_that.type,_that.amountPaise,_that.availableAfterPaise,_that.reservedAfterPaise,_that.reason,_that.referenceId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletLedgerEntry implements WalletLedgerEntry {
  const _WalletLedgerEntry({this.id, this.type, this.amountPaise, this.availableAfterPaise, this.reservedAfterPaise, this.reason, this.referenceId, this.createdAt});
  factory _WalletLedgerEntry.fromJson(Map<String, dynamic> json) => _$WalletLedgerEntryFromJson(json);

@override final  String? id;
@override final  WalletLedgerEntryType? type;
@override final  int? amountPaise;
@override final  int? availableAfterPaise;
@override final  int? reservedAfterPaise;
@override final  String? reason;
@override final  String? referenceId;
@override final  DateTime? createdAt;

/// Create a copy of WalletLedgerEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletLedgerEntryCopyWith<_WalletLedgerEntry> get copyWith => __$WalletLedgerEntryCopyWithImpl<_WalletLedgerEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletLedgerEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletLedgerEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.availableAfterPaise, availableAfterPaise) || other.availableAfterPaise == availableAfterPaise)&&(identical(other.reservedAfterPaise, reservedAfterPaise) || other.reservedAfterPaise == reservedAfterPaise)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,amountPaise,availableAfterPaise,reservedAfterPaise,reason,referenceId,createdAt);

@override
String toString() {
  return 'WalletLedgerEntry(id: $id, type: $type, amountPaise: $amountPaise, availableAfterPaise: $availableAfterPaise, reservedAfterPaise: $reservedAfterPaise, reason: $reason, referenceId: $referenceId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$WalletLedgerEntryCopyWith<$Res> implements $WalletLedgerEntryCopyWith<$Res> {
  factory _$WalletLedgerEntryCopyWith(_WalletLedgerEntry value, $Res Function(_WalletLedgerEntry) _then) = __$WalletLedgerEntryCopyWithImpl;
@override @useResult
$Res call({
 String? id, WalletLedgerEntryType? type, int? amountPaise, int? availableAfterPaise, int? reservedAfterPaise, String? reason, String? referenceId, DateTime? createdAt
});




}
/// @nodoc
class __$WalletLedgerEntryCopyWithImpl<$Res>
    implements _$WalletLedgerEntryCopyWith<$Res> {
  __$WalletLedgerEntryCopyWithImpl(this._self, this._then);

  final _WalletLedgerEntry _self;
  final $Res Function(_WalletLedgerEntry) _then;

/// Create a copy of WalletLedgerEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? amountPaise = freezed,Object? availableAfterPaise = freezed,Object? reservedAfterPaise = freezed,Object? reason = freezed,Object? referenceId = freezed,Object? createdAt = freezed,}) {
  return _then(_WalletLedgerEntry(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WalletLedgerEntryType?,amountPaise: freezed == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int?,availableAfterPaise: freezed == availableAfterPaise ? _self.availableAfterPaise : availableAfterPaise // ignore: cast_nullable_to_non_nullable
as int?,reservedAfterPaise: freezed == reservedAfterPaise ? _self.reservedAfterPaise : reservedAfterPaise // ignore: cast_nullable_to_non_nullable
as int?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
