// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_branch_total.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardBranchTotal {

 String? get branchId; String? get branchName; int? get issuedPoints; int? get redeemedPoints; int? get outstandingPoints; int? get issuedValuePaise; int? get redeemedValuePaise; int? get outstandingValuePaise;
/// Create a copy of RewardBranchTotal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardBranchTotalCopyWith<RewardBranchTotal> get copyWith => _$RewardBranchTotalCopyWithImpl<RewardBranchTotal>(this as RewardBranchTotal, _$identity);

  /// Serializes this RewardBranchTotal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardBranchTotal&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.issuedPoints, issuedPoints) || other.issuedPoints == issuedPoints)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints)&&(identical(other.outstandingPoints, outstandingPoints) || other.outstandingPoints == outstandingPoints)&&(identical(other.issuedValuePaise, issuedValuePaise) || other.issuedValuePaise == issuedValuePaise)&&(identical(other.redeemedValuePaise, redeemedValuePaise) || other.redeemedValuePaise == redeemedValuePaise)&&(identical(other.outstandingValuePaise, outstandingValuePaise) || other.outstandingValuePaise == outstandingValuePaise));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchId,branchName,issuedPoints,redeemedPoints,outstandingPoints,issuedValuePaise,redeemedValuePaise,outstandingValuePaise);

@override
String toString() {
  return 'RewardBranchTotal(branchId: $branchId, branchName: $branchName, issuedPoints: $issuedPoints, redeemedPoints: $redeemedPoints, outstandingPoints: $outstandingPoints, issuedValuePaise: $issuedValuePaise, redeemedValuePaise: $redeemedValuePaise, outstandingValuePaise: $outstandingValuePaise)';
}


}

/// @nodoc
abstract mixin class $RewardBranchTotalCopyWith<$Res>  {
  factory $RewardBranchTotalCopyWith(RewardBranchTotal value, $Res Function(RewardBranchTotal) _then) = _$RewardBranchTotalCopyWithImpl;
@useResult
$Res call({
 String? branchId, String? branchName, int? issuedPoints, int? redeemedPoints, int? outstandingPoints, int? issuedValuePaise, int? redeemedValuePaise, int? outstandingValuePaise
});




}
/// @nodoc
class _$RewardBranchTotalCopyWithImpl<$Res>
    implements $RewardBranchTotalCopyWith<$Res> {
  _$RewardBranchTotalCopyWithImpl(this._self, this._then);

  final RewardBranchTotal _self;
  final $Res Function(RewardBranchTotal) _then;

/// Create a copy of RewardBranchTotal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchId = freezed,Object? branchName = freezed,Object? issuedPoints = freezed,Object? redeemedPoints = freezed,Object? outstandingPoints = freezed,Object? issuedValuePaise = freezed,Object? redeemedValuePaise = freezed,Object? outstandingValuePaise = freezed,}) {
  return _then(_self.copyWith(
branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,issuedPoints: freezed == issuedPoints ? _self.issuedPoints : issuedPoints // ignore: cast_nullable_to_non_nullable
as int?,redeemedPoints: freezed == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as int?,outstandingPoints: freezed == outstandingPoints ? _self.outstandingPoints : outstandingPoints // ignore: cast_nullable_to_non_nullable
as int?,issuedValuePaise: freezed == issuedValuePaise ? _self.issuedValuePaise : issuedValuePaise // ignore: cast_nullable_to_non_nullable
as int?,redeemedValuePaise: freezed == redeemedValuePaise ? _self.redeemedValuePaise : redeemedValuePaise // ignore: cast_nullable_to_non_nullable
as int?,outstandingValuePaise: freezed == outstandingValuePaise ? _self.outstandingValuePaise : outstandingValuePaise // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RewardBranchTotal].
extension RewardBranchTotalPatterns on RewardBranchTotal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardBranchTotal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardBranchTotal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardBranchTotal value)  $default,){
final _that = this;
switch (_that) {
case _RewardBranchTotal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardBranchTotal value)?  $default,){
final _that = this;
switch (_that) {
case _RewardBranchTotal() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? branchId,  String? branchName,  int? issuedPoints,  int? redeemedPoints,  int? outstandingPoints,  int? issuedValuePaise,  int? redeemedValuePaise,  int? outstandingValuePaise)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardBranchTotal() when $default != null:
return $default(_that.branchId,_that.branchName,_that.issuedPoints,_that.redeemedPoints,_that.outstandingPoints,_that.issuedValuePaise,_that.redeemedValuePaise,_that.outstandingValuePaise);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? branchId,  String? branchName,  int? issuedPoints,  int? redeemedPoints,  int? outstandingPoints,  int? issuedValuePaise,  int? redeemedValuePaise,  int? outstandingValuePaise)  $default,) {final _that = this;
switch (_that) {
case _RewardBranchTotal():
return $default(_that.branchId,_that.branchName,_that.issuedPoints,_that.redeemedPoints,_that.outstandingPoints,_that.issuedValuePaise,_that.redeemedValuePaise,_that.outstandingValuePaise);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? branchId,  String? branchName,  int? issuedPoints,  int? redeemedPoints,  int? outstandingPoints,  int? issuedValuePaise,  int? redeemedValuePaise,  int? outstandingValuePaise)?  $default,) {final _that = this;
switch (_that) {
case _RewardBranchTotal() when $default != null:
return $default(_that.branchId,_that.branchName,_that.issuedPoints,_that.redeemedPoints,_that.outstandingPoints,_that.issuedValuePaise,_that.redeemedValuePaise,_that.outstandingValuePaise);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardBranchTotal implements RewardBranchTotal {
  const _RewardBranchTotal({this.branchId, this.branchName, this.issuedPoints, this.redeemedPoints, this.outstandingPoints, this.issuedValuePaise, this.redeemedValuePaise, this.outstandingValuePaise});
  factory _RewardBranchTotal.fromJson(Map<String, dynamic> json) => _$RewardBranchTotalFromJson(json);

@override final  String? branchId;
@override final  String? branchName;
@override final  int? issuedPoints;
@override final  int? redeemedPoints;
@override final  int? outstandingPoints;
@override final  int? issuedValuePaise;
@override final  int? redeemedValuePaise;
@override final  int? outstandingValuePaise;

/// Create a copy of RewardBranchTotal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardBranchTotalCopyWith<_RewardBranchTotal> get copyWith => __$RewardBranchTotalCopyWithImpl<_RewardBranchTotal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardBranchTotalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardBranchTotal&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.issuedPoints, issuedPoints) || other.issuedPoints == issuedPoints)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints)&&(identical(other.outstandingPoints, outstandingPoints) || other.outstandingPoints == outstandingPoints)&&(identical(other.issuedValuePaise, issuedValuePaise) || other.issuedValuePaise == issuedValuePaise)&&(identical(other.redeemedValuePaise, redeemedValuePaise) || other.redeemedValuePaise == redeemedValuePaise)&&(identical(other.outstandingValuePaise, outstandingValuePaise) || other.outstandingValuePaise == outstandingValuePaise));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchId,branchName,issuedPoints,redeemedPoints,outstandingPoints,issuedValuePaise,redeemedValuePaise,outstandingValuePaise);

@override
String toString() {
  return 'RewardBranchTotal(branchId: $branchId, branchName: $branchName, issuedPoints: $issuedPoints, redeemedPoints: $redeemedPoints, outstandingPoints: $outstandingPoints, issuedValuePaise: $issuedValuePaise, redeemedValuePaise: $redeemedValuePaise, outstandingValuePaise: $outstandingValuePaise)';
}


}

/// @nodoc
abstract mixin class _$RewardBranchTotalCopyWith<$Res> implements $RewardBranchTotalCopyWith<$Res> {
  factory _$RewardBranchTotalCopyWith(_RewardBranchTotal value, $Res Function(_RewardBranchTotal) _then) = __$RewardBranchTotalCopyWithImpl;
@override @useResult
$Res call({
 String? branchId, String? branchName, int? issuedPoints, int? redeemedPoints, int? outstandingPoints, int? issuedValuePaise, int? redeemedValuePaise, int? outstandingValuePaise
});




}
/// @nodoc
class __$RewardBranchTotalCopyWithImpl<$Res>
    implements _$RewardBranchTotalCopyWith<$Res> {
  __$RewardBranchTotalCopyWithImpl(this._self, this._then);

  final _RewardBranchTotal _self;
  final $Res Function(_RewardBranchTotal) _then;

/// Create a copy of RewardBranchTotal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchId = freezed,Object? branchName = freezed,Object? issuedPoints = freezed,Object? redeemedPoints = freezed,Object? outstandingPoints = freezed,Object? issuedValuePaise = freezed,Object? redeemedValuePaise = freezed,Object? outstandingValuePaise = freezed,}) {
  return _then(_RewardBranchTotal(
branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,issuedPoints: freezed == issuedPoints ? _self.issuedPoints : issuedPoints // ignore: cast_nullable_to_non_nullable
as int?,redeemedPoints: freezed == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as int?,outstandingPoints: freezed == outstandingPoints ? _self.outstandingPoints : outstandingPoints // ignore: cast_nullable_to_non_nullable
as int?,issuedValuePaise: freezed == issuedValuePaise ? _self.issuedValuePaise : issuedValuePaise // ignore: cast_nullable_to_non_nullable
as int?,redeemedValuePaise: freezed == redeemedValuePaise ? _self.redeemedValuePaise : redeemedValuePaise // ignore: cast_nullable_to_non_nullable
as int?,outstandingValuePaise: freezed == outstandingValuePaise ? _self.outstandingValuePaise : outstandingValuePaise // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
