// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Overview {

 int? get liveAuctions; int? get awaitingAcceptance; int? get paymentExceptions; int? get completedValuePaise; List<OverviewAttention>? get needsAttention;
/// Create a copy of Overview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverviewCopyWith<Overview> get copyWith => _$OverviewCopyWithImpl<Overview>(this as Overview, _$identity);

  /// Serializes this Overview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Overview&&(identical(other.liveAuctions, liveAuctions) || other.liveAuctions == liveAuctions)&&(identical(other.awaitingAcceptance, awaitingAcceptance) || other.awaitingAcceptance == awaitingAcceptance)&&(identical(other.paymentExceptions, paymentExceptions) || other.paymentExceptions == paymentExceptions)&&(identical(other.completedValuePaise, completedValuePaise) || other.completedValuePaise == completedValuePaise)&&const DeepCollectionEquality().equals(other.needsAttention, needsAttention));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,liveAuctions,awaitingAcceptance,paymentExceptions,completedValuePaise,const DeepCollectionEquality().hash(needsAttention));

@override
String toString() {
  return 'Overview(liveAuctions: $liveAuctions, awaitingAcceptance: $awaitingAcceptance, paymentExceptions: $paymentExceptions, completedValuePaise: $completedValuePaise, needsAttention: $needsAttention)';
}


}

/// @nodoc
abstract mixin class $OverviewCopyWith<$Res>  {
  factory $OverviewCopyWith(Overview value, $Res Function(Overview) _then) = _$OverviewCopyWithImpl;
@useResult
$Res call({
 int? liveAuctions, int? awaitingAcceptance, int? paymentExceptions, int? completedValuePaise, List<OverviewAttention>? needsAttention
});




}
/// @nodoc
class _$OverviewCopyWithImpl<$Res>
    implements $OverviewCopyWith<$Res> {
  _$OverviewCopyWithImpl(this._self, this._then);

  final Overview _self;
  final $Res Function(Overview) _then;

/// Create a copy of Overview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? liveAuctions = freezed,Object? awaitingAcceptance = freezed,Object? paymentExceptions = freezed,Object? completedValuePaise = freezed,Object? needsAttention = freezed,}) {
  return _then(_self.copyWith(
liveAuctions: freezed == liveAuctions ? _self.liveAuctions : liveAuctions // ignore: cast_nullable_to_non_nullable
as int?,awaitingAcceptance: freezed == awaitingAcceptance ? _self.awaitingAcceptance : awaitingAcceptance // ignore: cast_nullable_to_non_nullable
as int?,paymentExceptions: freezed == paymentExceptions ? _self.paymentExceptions : paymentExceptions // ignore: cast_nullable_to_non_nullable
as int?,completedValuePaise: freezed == completedValuePaise ? _self.completedValuePaise : completedValuePaise // ignore: cast_nullable_to_non_nullable
as int?,needsAttention: freezed == needsAttention ? _self.needsAttention : needsAttention // ignore: cast_nullable_to_non_nullable
as List<OverviewAttention>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Overview].
extension OverviewPatterns on Overview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Overview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Overview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Overview value)  $default,){
final _that = this;
switch (_that) {
case _Overview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Overview value)?  $default,){
final _that = this;
switch (_that) {
case _Overview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? liveAuctions,  int? awaitingAcceptance,  int? paymentExceptions,  int? completedValuePaise,  List<OverviewAttention>? needsAttention)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Overview() when $default != null:
return $default(_that.liveAuctions,_that.awaitingAcceptance,_that.paymentExceptions,_that.completedValuePaise,_that.needsAttention);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? liveAuctions,  int? awaitingAcceptance,  int? paymentExceptions,  int? completedValuePaise,  List<OverviewAttention>? needsAttention)  $default,) {final _that = this;
switch (_that) {
case _Overview():
return $default(_that.liveAuctions,_that.awaitingAcceptance,_that.paymentExceptions,_that.completedValuePaise,_that.needsAttention);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? liveAuctions,  int? awaitingAcceptance,  int? paymentExceptions,  int? completedValuePaise,  List<OverviewAttention>? needsAttention)?  $default,) {final _that = this;
switch (_that) {
case _Overview() when $default != null:
return $default(_that.liveAuctions,_that.awaitingAcceptance,_that.paymentExceptions,_that.completedValuePaise,_that.needsAttention);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Overview implements Overview {
  const _Overview({this.liveAuctions, this.awaitingAcceptance, this.paymentExceptions, this.completedValuePaise, final  List<OverviewAttention>? needsAttention}): _needsAttention = needsAttention;
  factory _Overview.fromJson(Map<String, dynamic> json) => _$OverviewFromJson(json);

@override final  int? liveAuctions;
@override final  int? awaitingAcceptance;
@override final  int? paymentExceptions;
@override final  int? completedValuePaise;
 final  List<OverviewAttention>? _needsAttention;
@override List<OverviewAttention>? get needsAttention {
  final value = _needsAttention;
  if (value == null) return null;
  if (_needsAttention is EqualUnmodifiableListView) return _needsAttention;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Overview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverviewCopyWith<_Overview> get copyWith => __$OverviewCopyWithImpl<_Overview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OverviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Overview&&(identical(other.liveAuctions, liveAuctions) || other.liveAuctions == liveAuctions)&&(identical(other.awaitingAcceptance, awaitingAcceptance) || other.awaitingAcceptance == awaitingAcceptance)&&(identical(other.paymentExceptions, paymentExceptions) || other.paymentExceptions == paymentExceptions)&&(identical(other.completedValuePaise, completedValuePaise) || other.completedValuePaise == completedValuePaise)&&const DeepCollectionEquality().equals(other._needsAttention, _needsAttention));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,liveAuctions,awaitingAcceptance,paymentExceptions,completedValuePaise,const DeepCollectionEquality().hash(_needsAttention));

@override
String toString() {
  return 'Overview(liveAuctions: $liveAuctions, awaitingAcceptance: $awaitingAcceptance, paymentExceptions: $paymentExceptions, completedValuePaise: $completedValuePaise, needsAttention: $needsAttention)';
}


}

/// @nodoc
abstract mixin class _$OverviewCopyWith<$Res> implements $OverviewCopyWith<$Res> {
  factory _$OverviewCopyWith(_Overview value, $Res Function(_Overview) _then) = __$OverviewCopyWithImpl;
@override @useResult
$Res call({
 int? liveAuctions, int? awaitingAcceptance, int? paymentExceptions, int? completedValuePaise, List<OverviewAttention>? needsAttention
});




}
/// @nodoc
class __$OverviewCopyWithImpl<$Res>
    implements _$OverviewCopyWith<$Res> {
  __$OverviewCopyWithImpl(this._self, this._then);

  final _Overview _self;
  final $Res Function(_Overview) _then;

/// Create a copy of Overview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? liveAuctions = freezed,Object? awaitingAcceptance = freezed,Object? paymentExceptions = freezed,Object? completedValuePaise = freezed,Object? needsAttention = freezed,}) {
  return _then(_Overview(
liveAuctions: freezed == liveAuctions ? _self.liveAuctions : liveAuctions // ignore: cast_nullable_to_non_nullable
as int?,awaitingAcceptance: freezed == awaitingAcceptance ? _self.awaitingAcceptance : awaitingAcceptance // ignore: cast_nullable_to_non_nullable
as int?,paymentExceptions: freezed == paymentExceptions ? _self.paymentExceptions : paymentExceptions // ignore: cast_nullable_to_non_nullable
as int?,completedValuePaise: freezed == completedValuePaise ? _self.completedValuePaise : completedValuePaise // ignore: cast_nullable_to_non_nullable
as int?,needsAttention: freezed == needsAttention ? _self._needsAttention : needsAttention // ignore: cast_nullable_to_non_nullable
as List<OverviewAttention>?,
  ));
}


}

// dart format on
