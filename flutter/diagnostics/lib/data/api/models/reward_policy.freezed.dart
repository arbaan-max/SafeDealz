// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardPolicy {

 String? get id; int? get version; int? get earnPointsPerHundredRupees; int? get pointValuePaise; List<String>? get eligibleCategories; int? get expiryDays; RewardPolicyRedemptionScope? get redemptionScope; bool? get chainRedemptionEnabled; bool? get multiBranchRedemptionEnabled; bool? get futureScopesInactive; DateTime? get effectiveFrom; String? get note;
/// Create a copy of RewardPolicy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardPolicyCopyWith<RewardPolicy> get copyWith => _$RewardPolicyCopyWithImpl<RewardPolicy>(this as RewardPolicy, _$identity);

  /// Serializes this RewardPolicy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardPolicy&&(identical(other.id, id) || other.id == id)&&(identical(other.version, version) || other.version == version)&&(identical(other.earnPointsPerHundredRupees, earnPointsPerHundredRupees) || other.earnPointsPerHundredRupees == earnPointsPerHundredRupees)&&(identical(other.pointValuePaise, pointValuePaise) || other.pointValuePaise == pointValuePaise)&&const DeepCollectionEquality().equals(other.eligibleCategories, eligibleCategories)&&(identical(other.expiryDays, expiryDays) || other.expiryDays == expiryDays)&&(identical(other.redemptionScope, redemptionScope) || other.redemptionScope == redemptionScope)&&(identical(other.chainRedemptionEnabled, chainRedemptionEnabled) || other.chainRedemptionEnabled == chainRedemptionEnabled)&&(identical(other.multiBranchRedemptionEnabled, multiBranchRedemptionEnabled) || other.multiBranchRedemptionEnabled == multiBranchRedemptionEnabled)&&(identical(other.futureScopesInactive, futureScopesInactive) || other.futureScopesInactive == futureScopesInactive)&&(identical(other.effectiveFrom, effectiveFrom) || other.effectiveFrom == effectiveFrom)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,version,earnPointsPerHundredRupees,pointValuePaise,const DeepCollectionEquality().hash(eligibleCategories),expiryDays,redemptionScope,chainRedemptionEnabled,multiBranchRedemptionEnabled,futureScopesInactive,effectiveFrom,note);

@override
String toString() {
  return 'RewardPolicy(id: $id, version: $version, earnPointsPerHundredRupees: $earnPointsPerHundredRupees, pointValuePaise: $pointValuePaise, eligibleCategories: $eligibleCategories, expiryDays: $expiryDays, redemptionScope: $redemptionScope, chainRedemptionEnabled: $chainRedemptionEnabled, multiBranchRedemptionEnabled: $multiBranchRedemptionEnabled, futureScopesInactive: $futureScopesInactive, effectiveFrom: $effectiveFrom, note: $note)';
}


}

/// @nodoc
abstract mixin class $RewardPolicyCopyWith<$Res>  {
  factory $RewardPolicyCopyWith(RewardPolicy value, $Res Function(RewardPolicy) _then) = _$RewardPolicyCopyWithImpl;
@useResult
$Res call({
 String? id, int? version, int? earnPointsPerHundredRupees, int? pointValuePaise, List<String>? eligibleCategories, int? expiryDays, RewardPolicyRedemptionScope? redemptionScope, bool? chainRedemptionEnabled, bool? multiBranchRedemptionEnabled, bool? futureScopesInactive, DateTime? effectiveFrom, String? note
});




}
/// @nodoc
class _$RewardPolicyCopyWithImpl<$Res>
    implements $RewardPolicyCopyWith<$Res> {
  _$RewardPolicyCopyWithImpl(this._self, this._then);

  final RewardPolicy _self;
  final $Res Function(RewardPolicy) _then;

/// Create a copy of RewardPolicy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? version = freezed,Object? earnPointsPerHundredRupees = freezed,Object? pointValuePaise = freezed,Object? eligibleCategories = freezed,Object? expiryDays = freezed,Object? redemptionScope = freezed,Object? chainRedemptionEnabled = freezed,Object? multiBranchRedemptionEnabled = freezed,Object? futureScopesInactive = freezed,Object? effectiveFrom = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,earnPointsPerHundredRupees: freezed == earnPointsPerHundredRupees ? _self.earnPointsPerHundredRupees : earnPointsPerHundredRupees // ignore: cast_nullable_to_non_nullable
as int?,pointValuePaise: freezed == pointValuePaise ? _self.pointValuePaise : pointValuePaise // ignore: cast_nullable_to_non_nullable
as int?,eligibleCategories: freezed == eligibleCategories ? _self.eligibleCategories : eligibleCategories // ignore: cast_nullable_to_non_nullable
as List<String>?,expiryDays: freezed == expiryDays ? _self.expiryDays : expiryDays // ignore: cast_nullable_to_non_nullable
as int?,redemptionScope: freezed == redemptionScope ? _self.redemptionScope : redemptionScope // ignore: cast_nullable_to_non_nullable
as RewardPolicyRedemptionScope?,chainRedemptionEnabled: freezed == chainRedemptionEnabled ? _self.chainRedemptionEnabled : chainRedemptionEnabled // ignore: cast_nullable_to_non_nullable
as bool?,multiBranchRedemptionEnabled: freezed == multiBranchRedemptionEnabled ? _self.multiBranchRedemptionEnabled : multiBranchRedemptionEnabled // ignore: cast_nullable_to_non_nullable
as bool?,futureScopesInactive: freezed == futureScopesInactive ? _self.futureScopesInactive : futureScopesInactive // ignore: cast_nullable_to_non_nullable
as bool?,effectiveFrom: freezed == effectiveFrom ? _self.effectiveFrom : effectiveFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RewardPolicy].
extension RewardPolicyPatterns on RewardPolicy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardPolicy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardPolicy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardPolicy value)  $default,){
final _that = this;
switch (_that) {
case _RewardPolicy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardPolicy value)?  $default,){
final _that = this;
switch (_that) {
case _RewardPolicy() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  int? version,  int? earnPointsPerHundredRupees,  int? pointValuePaise,  List<String>? eligibleCategories,  int? expiryDays,  RewardPolicyRedemptionScope? redemptionScope,  bool? chainRedemptionEnabled,  bool? multiBranchRedemptionEnabled,  bool? futureScopesInactive,  DateTime? effectiveFrom,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardPolicy() when $default != null:
return $default(_that.id,_that.version,_that.earnPointsPerHundredRupees,_that.pointValuePaise,_that.eligibleCategories,_that.expiryDays,_that.redemptionScope,_that.chainRedemptionEnabled,_that.multiBranchRedemptionEnabled,_that.futureScopesInactive,_that.effectiveFrom,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  int? version,  int? earnPointsPerHundredRupees,  int? pointValuePaise,  List<String>? eligibleCategories,  int? expiryDays,  RewardPolicyRedemptionScope? redemptionScope,  bool? chainRedemptionEnabled,  bool? multiBranchRedemptionEnabled,  bool? futureScopesInactive,  DateTime? effectiveFrom,  String? note)  $default,) {final _that = this;
switch (_that) {
case _RewardPolicy():
return $default(_that.id,_that.version,_that.earnPointsPerHundredRupees,_that.pointValuePaise,_that.eligibleCategories,_that.expiryDays,_that.redemptionScope,_that.chainRedemptionEnabled,_that.multiBranchRedemptionEnabled,_that.futureScopesInactive,_that.effectiveFrom,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  int? version,  int? earnPointsPerHundredRupees,  int? pointValuePaise,  List<String>? eligibleCategories,  int? expiryDays,  RewardPolicyRedemptionScope? redemptionScope,  bool? chainRedemptionEnabled,  bool? multiBranchRedemptionEnabled,  bool? futureScopesInactive,  DateTime? effectiveFrom,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _RewardPolicy() when $default != null:
return $default(_that.id,_that.version,_that.earnPointsPerHundredRupees,_that.pointValuePaise,_that.eligibleCategories,_that.expiryDays,_that.redemptionScope,_that.chainRedemptionEnabled,_that.multiBranchRedemptionEnabled,_that.futureScopesInactive,_that.effectiveFrom,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardPolicy implements RewardPolicy {
  const _RewardPolicy({this.id, this.version, this.earnPointsPerHundredRupees, this.pointValuePaise, final  List<String>? eligibleCategories, this.expiryDays, this.redemptionScope, this.chainRedemptionEnabled, this.multiBranchRedemptionEnabled, this.futureScopesInactive, this.effectiveFrom, this.note}): _eligibleCategories = eligibleCategories;
  factory _RewardPolicy.fromJson(Map<String, dynamic> json) => _$RewardPolicyFromJson(json);

@override final  String? id;
@override final  int? version;
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
@override final  RewardPolicyRedemptionScope? redemptionScope;
@override final  bool? chainRedemptionEnabled;
@override final  bool? multiBranchRedemptionEnabled;
@override final  bool? futureScopesInactive;
@override final  DateTime? effectiveFrom;
@override final  String? note;

/// Create a copy of RewardPolicy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardPolicyCopyWith<_RewardPolicy> get copyWith => __$RewardPolicyCopyWithImpl<_RewardPolicy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardPolicyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardPolicy&&(identical(other.id, id) || other.id == id)&&(identical(other.version, version) || other.version == version)&&(identical(other.earnPointsPerHundredRupees, earnPointsPerHundredRupees) || other.earnPointsPerHundredRupees == earnPointsPerHundredRupees)&&(identical(other.pointValuePaise, pointValuePaise) || other.pointValuePaise == pointValuePaise)&&const DeepCollectionEquality().equals(other._eligibleCategories, _eligibleCategories)&&(identical(other.expiryDays, expiryDays) || other.expiryDays == expiryDays)&&(identical(other.redemptionScope, redemptionScope) || other.redemptionScope == redemptionScope)&&(identical(other.chainRedemptionEnabled, chainRedemptionEnabled) || other.chainRedemptionEnabled == chainRedemptionEnabled)&&(identical(other.multiBranchRedemptionEnabled, multiBranchRedemptionEnabled) || other.multiBranchRedemptionEnabled == multiBranchRedemptionEnabled)&&(identical(other.futureScopesInactive, futureScopesInactive) || other.futureScopesInactive == futureScopesInactive)&&(identical(other.effectiveFrom, effectiveFrom) || other.effectiveFrom == effectiveFrom)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,version,earnPointsPerHundredRupees,pointValuePaise,const DeepCollectionEquality().hash(_eligibleCategories),expiryDays,redemptionScope,chainRedemptionEnabled,multiBranchRedemptionEnabled,futureScopesInactive,effectiveFrom,note);

@override
String toString() {
  return 'RewardPolicy(id: $id, version: $version, earnPointsPerHundredRupees: $earnPointsPerHundredRupees, pointValuePaise: $pointValuePaise, eligibleCategories: $eligibleCategories, expiryDays: $expiryDays, redemptionScope: $redemptionScope, chainRedemptionEnabled: $chainRedemptionEnabled, multiBranchRedemptionEnabled: $multiBranchRedemptionEnabled, futureScopesInactive: $futureScopesInactive, effectiveFrom: $effectiveFrom, note: $note)';
}


}

/// @nodoc
abstract mixin class _$RewardPolicyCopyWith<$Res> implements $RewardPolicyCopyWith<$Res> {
  factory _$RewardPolicyCopyWith(_RewardPolicy value, $Res Function(_RewardPolicy) _then) = __$RewardPolicyCopyWithImpl;
@override @useResult
$Res call({
 String? id, int? version, int? earnPointsPerHundredRupees, int? pointValuePaise, List<String>? eligibleCategories, int? expiryDays, RewardPolicyRedemptionScope? redemptionScope, bool? chainRedemptionEnabled, bool? multiBranchRedemptionEnabled, bool? futureScopesInactive, DateTime? effectiveFrom, String? note
});




}
/// @nodoc
class __$RewardPolicyCopyWithImpl<$Res>
    implements _$RewardPolicyCopyWith<$Res> {
  __$RewardPolicyCopyWithImpl(this._self, this._then);

  final _RewardPolicy _self;
  final $Res Function(_RewardPolicy) _then;

/// Create a copy of RewardPolicy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? version = freezed,Object? earnPointsPerHundredRupees = freezed,Object? pointValuePaise = freezed,Object? eligibleCategories = freezed,Object? expiryDays = freezed,Object? redemptionScope = freezed,Object? chainRedemptionEnabled = freezed,Object? multiBranchRedemptionEnabled = freezed,Object? futureScopesInactive = freezed,Object? effectiveFrom = freezed,Object? note = freezed,}) {
  return _then(_RewardPolicy(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,earnPointsPerHundredRupees: freezed == earnPointsPerHundredRupees ? _self.earnPointsPerHundredRupees : earnPointsPerHundredRupees // ignore: cast_nullable_to_non_nullable
as int?,pointValuePaise: freezed == pointValuePaise ? _self.pointValuePaise : pointValuePaise // ignore: cast_nullable_to_non_nullable
as int?,eligibleCategories: freezed == eligibleCategories ? _self._eligibleCategories : eligibleCategories // ignore: cast_nullable_to_non_nullable
as List<String>?,expiryDays: freezed == expiryDays ? _self.expiryDays : expiryDays // ignore: cast_nullable_to_non_nullable
as int?,redemptionScope: freezed == redemptionScope ? _self.redemptionScope : redemptionScope // ignore: cast_nullable_to_non_nullable
as RewardPolicyRedemptionScope?,chainRedemptionEnabled: freezed == chainRedemptionEnabled ? _self.chainRedemptionEnabled : chainRedemptionEnabled // ignore: cast_nullable_to_non_nullable
as bool?,multiBranchRedemptionEnabled: freezed == multiBranchRedemptionEnabled ? _self.multiBranchRedemptionEnabled : multiBranchRedemptionEnabled // ignore: cast_nullable_to_non_nullable
as bool?,futureScopesInactive: freezed == futureScopesInactive ? _self.futureScopesInactive : futureScopesInactive // ignore: cast_nullable_to_non_nullable
as bool?,effectiveFrom: freezed == effectiveFrom ? _self.effectiveFrom : effectiveFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
