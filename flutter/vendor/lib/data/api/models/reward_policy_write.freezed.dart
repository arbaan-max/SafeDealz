// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_policy_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardPolicyWrite {

 int? get earnPointsPerHundredRupees; int? get pointValuePaise; List<String>? get eligibleCategories; int? get expiryDays; RewardPolicyWriteRedemptionScope? get redemptionScope; bool? get chainRedemptionEnabled; bool? get multiBranchRedemptionEnabled; DateTime? get effectiveFrom; String? get note;
/// Create a copy of RewardPolicyWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardPolicyWriteCopyWith<RewardPolicyWrite> get copyWith => _$RewardPolicyWriteCopyWithImpl<RewardPolicyWrite>(this as RewardPolicyWrite, _$identity);

  /// Serializes this RewardPolicyWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardPolicyWrite&&(identical(other.earnPointsPerHundredRupees, earnPointsPerHundredRupees) || other.earnPointsPerHundredRupees == earnPointsPerHundredRupees)&&(identical(other.pointValuePaise, pointValuePaise) || other.pointValuePaise == pointValuePaise)&&const DeepCollectionEquality().equals(other.eligibleCategories, eligibleCategories)&&(identical(other.expiryDays, expiryDays) || other.expiryDays == expiryDays)&&(identical(other.redemptionScope, redemptionScope) || other.redemptionScope == redemptionScope)&&(identical(other.chainRedemptionEnabled, chainRedemptionEnabled) || other.chainRedemptionEnabled == chainRedemptionEnabled)&&(identical(other.multiBranchRedemptionEnabled, multiBranchRedemptionEnabled) || other.multiBranchRedemptionEnabled == multiBranchRedemptionEnabled)&&(identical(other.effectiveFrom, effectiveFrom) || other.effectiveFrom == effectiveFrom)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,earnPointsPerHundredRupees,pointValuePaise,const DeepCollectionEquality().hash(eligibleCategories),expiryDays,redemptionScope,chainRedemptionEnabled,multiBranchRedemptionEnabled,effectiveFrom,note);

@override
String toString() {
  return 'RewardPolicyWrite(earnPointsPerHundredRupees: $earnPointsPerHundredRupees, pointValuePaise: $pointValuePaise, eligibleCategories: $eligibleCategories, expiryDays: $expiryDays, redemptionScope: $redemptionScope, chainRedemptionEnabled: $chainRedemptionEnabled, multiBranchRedemptionEnabled: $multiBranchRedemptionEnabled, effectiveFrom: $effectiveFrom, note: $note)';
}


}

/// @nodoc
abstract mixin class $RewardPolicyWriteCopyWith<$Res>  {
  factory $RewardPolicyWriteCopyWith(RewardPolicyWrite value, $Res Function(RewardPolicyWrite) _then) = _$RewardPolicyWriteCopyWithImpl;
@useResult
$Res call({
 int? earnPointsPerHundredRupees, int? pointValuePaise, List<String>? eligibleCategories, int? expiryDays, RewardPolicyWriteRedemptionScope? redemptionScope, bool? chainRedemptionEnabled, bool? multiBranchRedemptionEnabled, DateTime? effectiveFrom, String? note
});




}
/// @nodoc
class _$RewardPolicyWriteCopyWithImpl<$Res>
    implements $RewardPolicyWriteCopyWith<$Res> {
  _$RewardPolicyWriteCopyWithImpl(this._self, this._then);

  final RewardPolicyWrite _self;
  final $Res Function(RewardPolicyWrite) _then;

/// Create a copy of RewardPolicyWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? earnPointsPerHundredRupees = freezed,Object? pointValuePaise = freezed,Object? eligibleCategories = freezed,Object? expiryDays = freezed,Object? redemptionScope = freezed,Object? chainRedemptionEnabled = freezed,Object? multiBranchRedemptionEnabled = freezed,Object? effectiveFrom = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
earnPointsPerHundredRupees: freezed == earnPointsPerHundredRupees ? _self.earnPointsPerHundredRupees : earnPointsPerHundredRupees // ignore: cast_nullable_to_non_nullable
as int?,pointValuePaise: freezed == pointValuePaise ? _self.pointValuePaise : pointValuePaise // ignore: cast_nullable_to_non_nullable
as int?,eligibleCategories: freezed == eligibleCategories ? _self.eligibleCategories : eligibleCategories // ignore: cast_nullable_to_non_nullable
as List<String>?,expiryDays: freezed == expiryDays ? _self.expiryDays : expiryDays // ignore: cast_nullable_to_non_nullable
as int?,redemptionScope: freezed == redemptionScope ? _self.redemptionScope : redemptionScope // ignore: cast_nullable_to_non_nullable
as RewardPolicyWriteRedemptionScope?,chainRedemptionEnabled: freezed == chainRedemptionEnabled ? _self.chainRedemptionEnabled : chainRedemptionEnabled // ignore: cast_nullable_to_non_nullable
as bool?,multiBranchRedemptionEnabled: freezed == multiBranchRedemptionEnabled ? _self.multiBranchRedemptionEnabled : multiBranchRedemptionEnabled // ignore: cast_nullable_to_non_nullable
as bool?,effectiveFrom: freezed == effectiveFrom ? _self.effectiveFrom : effectiveFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RewardPolicyWrite].
extension RewardPolicyWritePatterns on RewardPolicyWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardPolicyWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardPolicyWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardPolicyWrite value)  $default,){
final _that = this;
switch (_that) {
case _RewardPolicyWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardPolicyWrite value)?  $default,){
final _that = this;
switch (_that) {
case _RewardPolicyWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? earnPointsPerHundredRupees,  int? pointValuePaise,  List<String>? eligibleCategories,  int? expiryDays,  RewardPolicyWriteRedemptionScope? redemptionScope,  bool? chainRedemptionEnabled,  bool? multiBranchRedemptionEnabled,  DateTime? effectiveFrom,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardPolicyWrite() when $default != null:
return $default(_that.earnPointsPerHundredRupees,_that.pointValuePaise,_that.eligibleCategories,_that.expiryDays,_that.redemptionScope,_that.chainRedemptionEnabled,_that.multiBranchRedemptionEnabled,_that.effectiveFrom,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? earnPointsPerHundredRupees,  int? pointValuePaise,  List<String>? eligibleCategories,  int? expiryDays,  RewardPolicyWriteRedemptionScope? redemptionScope,  bool? chainRedemptionEnabled,  bool? multiBranchRedemptionEnabled,  DateTime? effectiveFrom,  String? note)  $default,) {final _that = this;
switch (_that) {
case _RewardPolicyWrite():
return $default(_that.earnPointsPerHundredRupees,_that.pointValuePaise,_that.eligibleCategories,_that.expiryDays,_that.redemptionScope,_that.chainRedemptionEnabled,_that.multiBranchRedemptionEnabled,_that.effectiveFrom,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? earnPointsPerHundredRupees,  int? pointValuePaise,  List<String>? eligibleCategories,  int? expiryDays,  RewardPolicyWriteRedemptionScope? redemptionScope,  bool? chainRedemptionEnabled,  bool? multiBranchRedemptionEnabled,  DateTime? effectiveFrom,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _RewardPolicyWrite() when $default != null:
return $default(_that.earnPointsPerHundredRupees,_that.pointValuePaise,_that.eligibleCategories,_that.expiryDays,_that.redemptionScope,_that.chainRedemptionEnabled,_that.multiBranchRedemptionEnabled,_that.effectiveFrom,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardPolicyWrite implements RewardPolicyWrite {
  const _RewardPolicyWrite({this.earnPointsPerHundredRupees, this.pointValuePaise, final  List<String>? eligibleCategories, this.expiryDays, this.redemptionScope, this.chainRedemptionEnabled, this.multiBranchRedemptionEnabled, this.effectiveFrom, this.note}): _eligibleCategories = eligibleCategories;
  factory _RewardPolicyWrite.fromJson(Map<String, dynamic> json) => _$RewardPolicyWriteFromJson(json);

@override final  int? earnPointsPerHundredRupees;
@override final  int? pointValuePaise;
 final  List<String>? _eligibleCategories;
@override List<String>? get eligibleCategories {
  final value = _eligibleCategories;
  if (value == null) return null;
  if (_eligibleCategories is EqualUnmodifiableListView) return _eligibleCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? expiryDays;
@override final  RewardPolicyWriteRedemptionScope? redemptionScope;
@override final  bool? chainRedemptionEnabled;
@override final  bool? multiBranchRedemptionEnabled;
@override final  DateTime? effectiveFrom;
@override final  String? note;

/// Create a copy of RewardPolicyWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardPolicyWriteCopyWith<_RewardPolicyWrite> get copyWith => __$RewardPolicyWriteCopyWithImpl<_RewardPolicyWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardPolicyWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardPolicyWrite&&(identical(other.earnPointsPerHundredRupees, earnPointsPerHundredRupees) || other.earnPointsPerHundredRupees == earnPointsPerHundredRupees)&&(identical(other.pointValuePaise, pointValuePaise) || other.pointValuePaise == pointValuePaise)&&const DeepCollectionEquality().equals(other._eligibleCategories, _eligibleCategories)&&(identical(other.expiryDays, expiryDays) || other.expiryDays == expiryDays)&&(identical(other.redemptionScope, redemptionScope) || other.redemptionScope == redemptionScope)&&(identical(other.chainRedemptionEnabled, chainRedemptionEnabled) || other.chainRedemptionEnabled == chainRedemptionEnabled)&&(identical(other.multiBranchRedemptionEnabled, multiBranchRedemptionEnabled) || other.multiBranchRedemptionEnabled == multiBranchRedemptionEnabled)&&(identical(other.effectiveFrom, effectiveFrom) || other.effectiveFrom == effectiveFrom)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,earnPointsPerHundredRupees,pointValuePaise,const DeepCollectionEquality().hash(_eligibleCategories),expiryDays,redemptionScope,chainRedemptionEnabled,multiBranchRedemptionEnabled,effectiveFrom,note);

@override
String toString() {
  return 'RewardPolicyWrite(earnPointsPerHundredRupees: $earnPointsPerHundredRupees, pointValuePaise: $pointValuePaise, eligibleCategories: $eligibleCategories, expiryDays: $expiryDays, redemptionScope: $redemptionScope, chainRedemptionEnabled: $chainRedemptionEnabled, multiBranchRedemptionEnabled: $multiBranchRedemptionEnabled, effectiveFrom: $effectiveFrom, note: $note)';
}


}

/// @nodoc
abstract mixin class _$RewardPolicyWriteCopyWith<$Res> implements $RewardPolicyWriteCopyWith<$Res> {
  factory _$RewardPolicyWriteCopyWith(_RewardPolicyWrite value, $Res Function(_RewardPolicyWrite) _then) = __$RewardPolicyWriteCopyWithImpl;
@override @useResult
$Res call({
 int? earnPointsPerHundredRupees, int? pointValuePaise, List<String>? eligibleCategories, int? expiryDays, RewardPolicyWriteRedemptionScope? redemptionScope, bool? chainRedemptionEnabled, bool? multiBranchRedemptionEnabled, DateTime? effectiveFrom, String? note
});




}
/// @nodoc
class __$RewardPolicyWriteCopyWithImpl<$Res>
    implements _$RewardPolicyWriteCopyWith<$Res> {
  __$RewardPolicyWriteCopyWithImpl(this._self, this._then);

  final _RewardPolicyWrite _self;
  final $Res Function(_RewardPolicyWrite) _then;

/// Create a copy of RewardPolicyWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? earnPointsPerHundredRupees = freezed,Object? pointValuePaise = freezed,Object? eligibleCategories = freezed,Object? expiryDays = freezed,Object? redemptionScope = freezed,Object? chainRedemptionEnabled = freezed,Object? multiBranchRedemptionEnabled = freezed,Object? effectiveFrom = freezed,Object? note = freezed,}) {
  return _then(_RewardPolicyWrite(
earnPointsPerHundredRupees: freezed == earnPointsPerHundredRupees ? _self.earnPointsPerHundredRupees : earnPointsPerHundredRupees // ignore: cast_nullable_to_non_nullable
as int?,pointValuePaise: freezed == pointValuePaise ? _self.pointValuePaise : pointValuePaise // ignore: cast_nullable_to_non_nullable
as int?,eligibleCategories: freezed == eligibleCategories ? _self._eligibleCategories : eligibleCategories // ignore: cast_nullable_to_non_nullable
as List<String>?,expiryDays: freezed == expiryDays ? _self.expiryDays : expiryDays // ignore: cast_nullable_to_non_nullable
as int?,redemptionScope: freezed == redemptionScope ? _self.redemptionScope : redemptionScope // ignore: cast_nullable_to_non_nullable
as RewardPolicyWriteRedemptionScope?,chainRedemptionEnabled: freezed == chainRedemptionEnabled ? _self.chainRedemptionEnabled : chainRedemptionEnabled // ignore: cast_nullable_to_non_nullable
as bool?,multiBranchRedemptionEnabled: freezed == multiBranchRedemptionEnabled ? _self.multiBranchRedemptionEnabled : multiBranchRedemptionEnabled // ignore: cast_nullable_to_non_nullable
as bool?,effectiveFrom: freezed == effectiveFrom ? _self.effectiveFrom : effectiveFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
