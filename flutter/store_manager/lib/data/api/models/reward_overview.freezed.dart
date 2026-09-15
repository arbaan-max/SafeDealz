// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardOverview {

 List<RewardBranchTotal>? get branches; RewardBranchTotal? get totals; RewardPolicy? get policy;
/// Create a copy of RewardOverview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardOverviewCopyWith<RewardOverview> get copyWith => _$RewardOverviewCopyWithImpl<RewardOverview>(this as RewardOverview, _$identity);

  /// Serializes this RewardOverview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardOverview&&const DeepCollectionEquality().equals(other.branches, branches)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.policy, policy) || other.policy == policy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(branches),totals,policy);

@override
String toString() {
  return 'RewardOverview(branches: $branches, totals: $totals, policy: $policy)';
}


}

/// @nodoc
abstract mixin class $RewardOverviewCopyWith<$Res>  {
  factory $RewardOverviewCopyWith(RewardOverview value, $Res Function(RewardOverview) _then) = _$RewardOverviewCopyWithImpl;
@useResult
$Res call({
 List<RewardBranchTotal>? branches, RewardBranchTotal? totals, RewardPolicy? policy
});


$RewardBranchTotalCopyWith<$Res>? get totals;$RewardPolicyCopyWith<$Res>? get policy;

}
/// @nodoc
class _$RewardOverviewCopyWithImpl<$Res>
    implements $RewardOverviewCopyWith<$Res> {
  _$RewardOverviewCopyWithImpl(this._self, this._then);

  final RewardOverview _self;
  final $Res Function(RewardOverview) _then;

/// Create a copy of RewardOverview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branches = freezed,Object? totals = freezed,Object? policy = freezed,}) {
  return _then(_self.copyWith(
branches: freezed == branches ? _self.branches : branches // ignore: cast_nullable_to_non_nullable
as List<RewardBranchTotal>?,totals: freezed == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as RewardBranchTotal?,policy: freezed == policy ? _self.policy : policy // ignore: cast_nullable_to_non_nullable
as RewardPolicy?,
  ));
}
/// Create a copy of RewardOverview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardBranchTotalCopyWith<$Res>? get totals {
    if (_self.totals == null) {
    return null;
  }

  return $RewardBranchTotalCopyWith<$Res>(_self.totals!, (value) {
    return _then(_self.copyWith(totals: value));
  });
}/// Create a copy of RewardOverview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardPolicyCopyWith<$Res>? get policy {
    if (_self.policy == null) {
    return null;
  }

  return $RewardPolicyCopyWith<$Res>(_self.policy!, (value) {
    return _then(_self.copyWith(policy: value));
  });
}
}


/// Adds pattern-matching-related methods to [RewardOverview].
extension RewardOverviewPatterns on RewardOverview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardOverview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardOverview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardOverview value)  $default,){
final _that = this;
switch (_that) {
case _RewardOverview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardOverview value)?  $default,){
final _that = this;
switch (_that) {
case _RewardOverview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RewardBranchTotal>? branches,  RewardBranchTotal? totals,  RewardPolicy? policy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardOverview() when $default != null:
return $default(_that.branches,_that.totals,_that.policy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RewardBranchTotal>? branches,  RewardBranchTotal? totals,  RewardPolicy? policy)  $default,) {final _that = this;
switch (_that) {
case _RewardOverview():
return $default(_that.branches,_that.totals,_that.policy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RewardBranchTotal>? branches,  RewardBranchTotal? totals,  RewardPolicy? policy)?  $default,) {final _that = this;
switch (_that) {
case _RewardOverview() when $default != null:
return $default(_that.branches,_that.totals,_that.policy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardOverview implements RewardOverview {
  const _RewardOverview({final  List<RewardBranchTotal>? branches, this.totals, this.policy}): _branches = branches;
  factory _RewardOverview.fromJson(Map<String, dynamic> json) => _$RewardOverviewFromJson(json);

 final  List<RewardBranchTotal>? _branches;
@override List<RewardBranchTotal>? get branches {
  final value = _branches;
  if (value == null) return null;
  if (_branches is EqualUnmodifiableListView) return _branches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  RewardBranchTotal? totals;
@override final  RewardPolicy? policy;

/// Create a copy of RewardOverview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardOverviewCopyWith<_RewardOverview> get copyWith => __$RewardOverviewCopyWithImpl<_RewardOverview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardOverviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardOverview&&const DeepCollectionEquality().equals(other._branches, _branches)&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.policy, policy) || other.policy == policy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_branches),totals,policy);

@override
String toString() {
  return 'RewardOverview(branches: $branches, totals: $totals, policy: $policy)';
}


}

/// @nodoc
abstract mixin class _$RewardOverviewCopyWith<$Res> implements $RewardOverviewCopyWith<$Res> {
  factory _$RewardOverviewCopyWith(_RewardOverview value, $Res Function(_RewardOverview) _then) = __$RewardOverviewCopyWithImpl;
@override @useResult
$Res call({
 List<RewardBranchTotal>? branches, RewardBranchTotal? totals, RewardPolicy? policy
});


@override $RewardBranchTotalCopyWith<$Res>? get totals;@override $RewardPolicyCopyWith<$Res>? get policy;

}
/// @nodoc
class __$RewardOverviewCopyWithImpl<$Res>
    implements _$RewardOverviewCopyWith<$Res> {
  __$RewardOverviewCopyWithImpl(this._self, this._then);

  final _RewardOverview _self;
  final $Res Function(_RewardOverview) _then;

/// Create a copy of RewardOverview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branches = freezed,Object? totals = freezed,Object? policy = freezed,}) {
  return _then(_RewardOverview(
branches: freezed == branches ? _self._branches : branches // ignore: cast_nullable_to_non_nullable
as List<RewardBranchTotal>?,totals: freezed == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as RewardBranchTotal?,policy: freezed == policy ? _self.policy : policy // ignore: cast_nullable_to_non_nullable
as RewardPolicy?,
  ));
}

/// Create a copy of RewardOverview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardBranchTotalCopyWith<$Res>? get totals {
    if (_self.totals == null) {
    return null;
  }

  return $RewardBranchTotalCopyWith<$Res>(_self.totals!, (value) {
    return _then(_self.copyWith(totals: value));
  });
}/// Create a copy of RewardOverview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardPolicyCopyWith<$Res>? get policy {
    if (_self.policy == null) {
    return null;
  }

  return $RewardPolicyCopyWith<$Res>(_self.policy!, (value) {
    return _then(_self.copyWith(policy: value));
  });
}
}

// dart format on
