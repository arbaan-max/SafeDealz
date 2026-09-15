// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Performance {

 int? get bids; int? get wins; int? get acceptedPurchases; num? get winRate; num? get averageResponseSeconds; List<PerformanceHour>? get hourly;
/// Create a copy of Performance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerformanceCopyWith<Performance> get copyWith => _$PerformanceCopyWithImpl<Performance>(this as Performance, _$identity);

  /// Serializes this Performance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Performance&&(identical(other.bids, bids) || other.bids == bids)&&(identical(other.wins, wins) || other.wins == wins)&&(identical(other.acceptedPurchases, acceptedPurchases) || other.acceptedPurchases == acceptedPurchases)&&(identical(other.winRate, winRate) || other.winRate == winRate)&&(identical(other.averageResponseSeconds, averageResponseSeconds) || other.averageResponseSeconds == averageResponseSeconds)&&const DeepCollectionEquality().equals(other.hourly, hourly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bids,wins,acceptedPurchases,winRate,averageResponseSeconds,const DeepCollectionEquality().hash(hourly));

@override
String toString() {
  return 'Performance(bids: $bids, wins: $wins, acceptedPurchases: $acceptedPurchases, winRate: $winRate, averageResponseSeconds: $averageResponseSeconds, hourly: $hourly)';
}


}

/// @nodoc
abstract mixin class $PerformanceCopyWith<$Res>  {
  factory $PerformanceCopyWith(Performance value, $Res Function(Performance) _then) = _$PerformanceCopyWithImpl;
@useResult
$Res call({
 int? bids, int? wins, int? acceptedPurchases, num? winRate, num? averageResponseSeconds, List<PerformanceHour>? hourly
});




}
/// @nodoc
class _$PerformanceCopyWithImpl<$Res>
    implements $PerformanceCopyWith<$Res> {
  _$PerformanceCopyWithImpl(this._self, this._then);

  final Performance _self;
  final $Res Function(Performance) _then;

/// Create a copy of Performance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bids = freezed,Object? wins = freezed,Object? acceptedPurchases = freezed,Object? winRate = freezed,Object? averageResponseSeconds = freezed,Object? hourly = freezed,}) {
  return _then(_self.copyWith(
bids: freezed == bids ? _self.bids : bids // ignore: cast_nullable_to_non_nullable
as int?,wins: freezed == wins ? _self.wins : wins // ignore: cast_nullable_to_non_nullable
as int?,acceptedPurchases: freezed == acceptedPurchases ? _self.acceptedPurchases : acceptedPurchases // ignore: cast_nullable_to_non_nullable
as int?,winRate: freezed == winRate ? _self.winRate : winRate // ignore: cast_nullable_to_non_nullable
as num?,averageResponseSeconds: freezed == averageResponseSeconds ? _self.averageResponseSeconds : averageResponseSeconds // ignore: cast_nullable_to_non_nullable
as num?,hourly: freezed == hourly ? _self.hourly : hourly // ignore: cast_nullable_to_non_nullable
as List<PerformanceHour>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Performance].
extension PerformancePatterns on Performance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Performance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Performance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Performance value)  $default,){
final _that = this;
switch (_that) {
case _Performance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Performance value)?  $default,){
final _that = this;
switch (_that) {
case _Performance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? bids,  int? wins,  int? acceptedPurchases,  num? winRate,  num? averageResponseSeconds,  List<PerformanceHour>? hourly)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Performance() when $default != null:
return $default(_that.bids,_that.wins,_that.acceptedPurchases,_that.winRate,_that.averageResponseSeconds,_that.hourly);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? bids,  int? wins,  int? acceptedPurchases,  num? winRate,  num? averageResponseSeconds,  List<PerformanceHour>? hourly)  $default,) {final _that = this;
switch (_that) {
case _Performance():
return $default(_that.bids,_that.wins,_that.acceptedPurchases,_that.winRate,_that.averageResponseSeconds,_that.hourly);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? bids,  int? wins,  int? acceptedPurchases,  num? winRate,  num? averageResponseSeconds,  List<PerformanceHour>? hourly)?  $default,) {final _that = this;
switch (_that) {
case _Performance() when $default != null:
return $default(_that.bids,_that.wins,_that.acceptedPurchases,_that.winRate,_that.averageResponseSeconds,_that.hourly);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Performance implements Performance {
  const _Performance({this.bids, this.wins, this.acceptedPurchases, this.winRate, this.averageResponseSeconds, final  List<PerformanceHour>? hourly}): _hourly = hourly;
  factory _Performance.fromJson(Map<String, dynamic> json) => _$PerformanceFromJson(json);

@override final  int? bids;
@override final  int? wins;
@override final  int? acceptedPurchases;
@override final  num? winRate;
@override final  num? averageResponseSeconds;
 final  List<PerformanceHour>? _hourly;
@override List<PerformanceHour>? get hourly {
  final value = _hourly;
  if (value == null) return null;
  if (_hourly is EqualUnmodifiableListView) return _hourly;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Performance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerformanceCopyWith<_Performance> get copyWith => __$PerformanceCopyWithImpl<_Performance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PerformanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Performance&&(identical(other.bids, bids) || other.bids == bids)&&(identical(other.wins, wins) || other.wins == wins)&&(identical(other.acceptedPurchases, acceptedPurchases) || other.acceptedPurchases == acceptedPurchases)&&(identical(other.winRate, winRate) || other.winRate == winRate)&&(identical(other.averageResponseSeconds, averageResponseSeconds) || other.averageResponseSeconds == averageResponseSeconds)&&const DeepCollectionEquality().equals(other._hourly, _hourly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bids,wins,acceptedPurchases,winRate,averageResponseSeconds,const DeepCollectionEquality().hash(_hourly));

@override
String toString() {
  return 'Performance(bids: $bids, wins: $wins, acceptedPurchases: $acceptedPurchases, winRate: $winRate, averageResponseSeconds: $averageResponseSeconds, hourly: $hourly)';
}


}

/// @nodoc
abstract mixin class _$PerformanceCopyWith<$Res> implements $PerformanceCopyWith<$Res> {
  factory _$PerformanceCopyWith(_Performance value, $Res Function(_Performance) _then) = __$PerformanceCopyWithImpl;
@override @useResult
$Res call({
 int? bids, int? wins, int? acceptedPurchases, num? winRate, num? averageResponseSeconds, List<PerformanceHour>? hourly
});




}
/// @nodoc
class __$PerformanceCopyWithImpl<$Res>
    implements _$PerformanceCopyWith<$Res> {
  __$PerformanceCopyWithImpl(this._self, this._then);

  final _Performance _self;
  final $Res Function(_Performance) _then;

/// Create a copy of Performance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bids = freezed,Object? wins = freezed,Object? acceptedPurchases = freezed,Object? winRate = freezed,Object? averageResponseSeconds = freezed,Object? hourly = freezed,}) {
  return _then(_Performance(
bids: freezed == bids ? _self.bids : bids // ignore: cast_nullable_to_non_nullable
as int?,wins: freezed == wins ? _self.wins : wins // ignore: cast_nullable_to_non_nullable
as int?,acceptedPurchases: freezed == acceptedPurchases ? _self.acceptedPurchases : acceptedPurchases // ignore: cast_nullable_to_non_nullable
as int?,winRate: freezed == winRate ? _self.winRate : winRate // ignore: cast_nullable_to_non_nullable
as num?,averageResponseSeconds: freezed == averageResponseSeconds ? _self.averageResponseSeconds : averageResponseSeconds // ignore: cast_nullable_to_non_nullable
as num?,hourly: freezed == hourly ? _self._hourly : hourly // ignore: cast_nullable_to_non_nullable
as List<PerformanceHour>?,
  ));
}


}

// dart format on
