// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_ledger_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardLedgerEntry {

 String? get id; RewardLedgerEntryType? get type; int? get points; int? get valuePaise; int? get balanceAfter; String? get branchId; String? get dealId; String? get invoiceNumber; int? get policyVersion; int? get earnPointsPerHundredRupees; int? get pointValuePaise; String? get reason; DateTime? get createdAt;
/// Create a copy of RewardLedgerEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardLedgerEntryCopyWith<RewardLedgerEntry> get copyWith => _$RewardLedgerEntryCopyWithImpl<RewardLedgerEntry>(this as RewardLedgerEntry, _$identity);

  /// Serializes this RewardLedgerEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardLedgerEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.points, points) || other.points == points)&&(identical(other.valuePaise, valuePaise) || other.valuePaise == valuePaise)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.dealId, dealId) || other.dealId == dealId)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.policyVersion, policyVersion) || other.policyVersion == policyVersion)&&(identical(other.earnPointsPerHundredRupees, earnPointsPerHundredRupees) || other.earnPointsPerHundredRupees == earnPointsPerHundredRupees)&&(identical(other.pointValuePaise, pointValuePaise) || other.pointValuePaise == pointValuePaise)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,points,valuePaise,balanceAfter,branchId,dealId,invoiceNumber,policyVersion,earnPointsPerHundredRupees,pointValuePaise,reason,createdAt);

@override
String toString() {
  return 'RewardLedgerEntry(id: $id, type: $type, points: $points, valuePaise: $valuePaise, balanceAfter: $balanceAfter, branchId: $branchId, dealId: $dealId, invoiceNumber: $invoiceNumber, policyVersion: $policyVersion, earnPointsPerHundredRupees: $earnPointsPerHundredRupees, pointValuePaise: $pointValuePaise, reason: $reason, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RewardLedgerEntryCopyWith<$Res>  {
  factory $RewardLedgerEntryCopyWith(RewardLedgerEntry value, $Res Function(RewardLedgerEntry) _then) = _$RewardLedgerEntryCopyWithImpl;
@useResult
$Res call({
 String? id, RewardLedgerEntryType? type, int? points, int? valuePaise, int? balanceAfter, String? branchId, String? dealId, String? invoiceNumber, int? policyVersion, int? earnPointsPerHundredRupees, int? pointValuePaise, String? reason, DateTime? createdAt
});




}
/// @nodoc
class _$RewardLedgerEntryCopyWithImpl<$Res>
    implements $RewardLedgerEntryCopyWith<$Res> {
  _$RewardLedgerEntryCopyWithImpl(this._self, this._then);

  final RewardLedgerEntry _self;
  final $Res Function(RewardLedgerEntry) _then;

/// Create a copy of RewardLedgerEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? points = freezed,Object? valuePaise = freezed,Object? balanceAfter = freezed,Object? branchId = freezed,Object? dealId = freezed,Object? invoiceNumber = freezed,Object? policyVersion = freezed,Object? earnPointsPerHundredRupees = freezed,Object? pointValuePaise = freezed,Object? reason = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RewardLedgerEntryType?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int?,valuePaise: freezed == valuePaise ? _self.valuePaise : valuePaise // ignore: cast_nullable_to_non_nullable
as int?,balanceAfter: freezed == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as int?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,dealId: freezed == dealId ? _self.dealId : dealId // ignore: cast_nullable_to_non_nullable
as String?,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,policyVersion: freezed == policyVersion ? _self.policyVersion : policyVersion // ignore: cast_nullable_to_non_nullable
as int?,earnPointsPerHundredRupees: freezed == earnPointsPerHundredRupees ? _self.earnPointsPerHundredRupees : earnPointsPerHundredRupees // ignore: cast_nullable_to_non_nullable
as int?,pointValuePaise: freezed == pointValuePaise ? _self.pointValuePaise : pointValuePaise // ignore: cast_nullable_to_non_nullable
as int?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RewardLedgerEntry].
extension RewardLedgerEntryPatterns on RewardLedgerEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardLedgerEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardLedgerEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardLedgerEntry value)  $default,){
final _that = this;
switch (_that) {
case _RewardLedgerEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardLedgerEntry value)?  $default,){
final _that = this;
switch (_that) {
case _RewardLedgerEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  RewardLedgerEntryType? type,  int? points,  int? valuePaise,  int? balanceAfter,  String? branchId,  String? dealId,  String? invoiceNumber,  int? policyVersion,  int? earnPointsPerHundredRupees,  int? pointValuePaise,  String? reason,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardLedgerEntry() when $default != null:
return $default(_that.id,_that.type,_that.points,_that.valuePaise,_that.balanceAfter,_that.branchId,_that.dealId,_that.invoiceNumber,_that.policyVersion,_that.earnPointsPerHundredRupees,_that.pointValuePaise,_that.reason,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  RewardLedgerEntryType? type,  int? points,  int? valuePaise,  int? balanceAfter,  String? branchId,  String? dealId,  String? invoiceNumber,  int? policyVersion,  int? earnPointsPerHundredRupees,  int? pointValuePaise,  String? reason,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _RewardLedgerEntry():
return $default(_that.id,_that.type,_that.points,_that.valuePaise,_that.balanceAfter,_that.branchId,_that.dealId,_that.invoiceNumber,_that.policyVersion,_that.earnPointsPerHundredRupees,_that.pointValuePaise,_that.reason,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  RewardLedgerEntryType? type,  int? points,  int? valuePaise,  int? balanceAfter,  String? branchId,  String? dealId,  String? invoiceNumber,  int? policyVersion,  int? earnPointsPerHundredRupees,  int? pointValuePaise,  String? reason,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RewardLedgerEntry() when $default != null:
return $default(_that.id,_that.type,_that.points,_that.valuePaise,_that.balanceAfter,_that.branchId,_that.dealId,_that.invoiceNumber,_that.policyVersion,_that.earnPointsPerHundredRupees,_that.pointValuePaise,_that.reason,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardLedgerEntry implements RewardLedgerEntry {
  const _RewardLedgerEntry({this.id, this.type, this.points, this.valuePaise, this.balanceAfter, this.branchId, this.dealId, this.invoiceNumber, this.policyVersion, this.earnPointsPerHundredRupees, this.pointValuePaise, this.reason, this.createdAt});
  factory _RewardLedgerEntry.fromJson(Map<String, dynamic> json) => _$RewardLedgerEntryFromJson(json);

@override final  String? id;
@override final  RewardLedgerEntryType? type;
@override final  int? points;
@override final  int? valuePaise;
@override final  int? balanceAfter;
@override final  String? branchId;
@override final  String? dealId;
@override final  String? invoiceNumber;
@override final  int? policyVersion;
@override final  int? earnPointsPerHundredRupees;
@override final  int? pointValuePaise;
@override final  String? reason;
@override final  DateTime? createdAt;

/// Create a copy of RewardLedgerEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardLedgerEntryCopyWith<_RewardLedgerEntry> get copyWith => __$RewardLedgerEntryCopyWithImpl<_RewardLedgerEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardLedgerEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardLedgerEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.points, points) || other.points == points)&&(identical(other.valuePaise, valuePaise) || other.valuePaise == valuePaise)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.dealId, dealId) || other.dealId == dealId)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.policyVersion, policyVersion) || other.policyVersion == policyVersion)&&(identical(other.earnPointsPerHundredRupees, earnPointsPerHundredRupees) || other.earnPointsPerHundredRupees == earnPointsPerHundredRupees)&&(identical(other.pointValuePaise, pointValuePaise) || other.pointValuePaise == pointValuePaise)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,points,valuePaise,balanceAfter,branchId,dealId,invoiceNumber,policyVersion,earnPointsPerHundredRupees,pointValuePaise,reason,createdAt);

@override
String toString() {
  return 'RewardLedgerEntry(id: $id, type: $type, points: $points, valuePaise: $valuePaise, balanceAfter: $balanceAfter, branchId: $branchId, dealId: $dealId, invoiceNumber: $invoiceNumber, policyVersion: $policyVersion, earnPointsPerHundredRupees: $earnPointsPerHundredRupees, pointValuePaise: $pointValuePaise, reason: $reason, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RewardLedgerEntryCopyWith<$Res> implements $RewardLedgerEntryCopyWith<$Res> {
  factory _$RewardLedgerEntryCopyWith(_RewardLedgerEntry value, $Res Function(_RewardLedgerEntry) _then) = __$RewardLedgerEntryCopyWithImpl;
@override @useResult
$Res call({
 String? id, RewardLedgerEntryType? type, int? points, int? valuePaise, int? balanceAfter, String? branchId, String? dealId, String? invoiceNumber, int? policyVersion, int? earnPointsPerHundredRupees, int? pointValuePaise, String? reason, DateTime? createdAt
});




}
/// @nodoc
class __$RewardLedgerEntryCopyWithImpl<$Res>
    implements _$RewardLedgerEntryCopyWith<$Res> {
  __$RewardLedgerEntryCopyWithImpl(this._self, this._then);

  final _RewardLedgerEntry _self;
  final $Res Function(_RewardLedgerEntry) _then;

/// Create a copy of RewardLedgerEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? points = freezed,Object? valuePaise = freezed,Object? balanceAfter = freezed,Object? branchId = freezed,Object? dealId = freezed,Object? invoiceNumber = freezed,Object? policyVersion = freezed,Object? earnPointsPerHundredRupees = freezed,Object? pointValuePaise = freezed,Object? reason = freezed,Object? createdAt = freezed,}) {
  return _then(_RewardLedgerEntry(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RewardLedgerEntryType?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int?,valuePaise: freezed == valuePaise ? _self.valuePaise : valuePaise // ignore: cast_nullable_to_non_nullable
as int?,balanceAfter: freezed == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as int?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,dealId: freezed == dealId ? _self.dealId : dealId // ignore: cast_nullable_to_non_nullable
as String?,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,policyVersion: freezed == policyVersion ? _self.policyVersion : policyVersion // ignore: cast_nullable_to_non_nullable
as int?,earnPointsPerHundredRupees: freezed == earnPointsPerHundredRupees ? _self.earnPointsPerHundredRupees : earnPointsPerHundredRupees // ignore: cast_nullable_to_non_nullable
as int?,pointValuePaise: freezed == pointValuePaise ? _self.pointValuePaise : pointValuePaise // ignore: cast_nullable_to_non_nullable
as int?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
