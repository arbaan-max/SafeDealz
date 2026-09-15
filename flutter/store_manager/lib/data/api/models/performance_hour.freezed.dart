// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performance_hour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PerformanceHour {

 int? get hour; int? get bids;
/// Create a copy of PerformanceHour
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerformanceHourCopyWith<PerformanceHour> get copyWith => _$PerformanceHourCopyWithImpl<PerformanceHour>(this as PerformanceHour, _$identity);

  /// Serializes this PerformanceHour to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerformanceHour&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.bids, bids) || other.bids == bids));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hour,bids);

@override
String toString() {
  return 'PerformanceHour(hour: $hour, bids: $bids)';
}


}

/// @nodoc
abstract mixin class $PerformanceHourCopyWith<$Res>  {
  factory $PerformanceHourCopyWith(PerformanceHour value, $Res Function(PerformanceHour) _then) = _$PerformanceHourCopyWithImpl;
@useResult
$Res call({
 int? hour, int? bids
});




}
/// @nodoc
class _$PerformanceHourCopyWithImpl<$Res>
    implements $PerformanceHourCopyWith<$Res> {
  _$PerformanceHourCopyWithImpl(this._self, this._then);

  final PerformanceHour _self;
  final $Res Function(PerformanceHour) _then;

/// Create a copy of PerformanceHour
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hour = freezed,Object? bids = freezed,}) {
  return _then(_self.copyWith(
hour: freezed == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int?,bids: freezed == bids ? _self.bids : bids // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PerformanceHour].
extension PerformanceHourPatterns on PerformanceHour {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PerformanceHour value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PerformanceHour() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PerformanceHour value)  $default,){
final _that = this;
switch (_that) {
case _PerformanceHour():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PerformanceHour value)?  $default,){
final _that = this;
switch (_that) {
case _PerformanceHour() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? hour,  int? bids)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PerformanceHour() when $default != null:
return $default(_that.hour,_that.bids);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? hour,  int? bids)  $default,) {final _that = this;
switch (_that) {
case _PerformanceHour():
return $default(_that.hour,_that.bids);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? hour,  int? bids)?  $default,) {final _that = this;
switch (_that) {
case _PerformanceHour() when $default != null:
return $default(_that.hour,_that.bids);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PerformanceHour implements PerformanceHour {
  const _PerformanceHour({this.hour, this.bids});
  factory _PerformanceHour.fromJson(Map<String, dynamic> json) => _$PerformanceHourFromJson(json);

@override final  int? hour;
@override final  int? bids;

/// Create a copy of PerformanceHour
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerformanceHourCopyWith<_PerformanceHour> get copyWith => __$PerformanceHourCopyWithImpl<_PerformanceHour>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PerformanceHourToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PerformanceHour&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.bids, bids) || other.bids == bids));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hour,bids);

@override
String toString() {
  return 'PerformanceHour(hour: $hour, bids: $bids)';
}


}

/// @nodoc
abstract mixin class _$PerformanceHourCopyWith<$Res> implements $PerformanceHourCopyWith<$Res> {
  factory _$PerformanceHourCopyWith(_PerformanceHour value, $Res Function(_PerformanceHour) _then) = __$PerformanceHourCopyWithImpl;
@override @useResult
$Res call({
 int? hour, int? bids
});




}
/// @nodoc
class __$PerformanceHourCopyWithImpl<$Res>
    implements _$PerformanceHourCopyWith<$Res> {
  __$PerformanceHourCopyWithImpl(this._self, this._then);

  final _PerformanceHour _self;
  final $Res Function(_PerformanceHour) _then;

/// Create a copy of PerformanceHour
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hour = freezed,Object? bids = freezed,}) {
  return _then(_PerformanceHour(
hour: freezed == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int?,bids: freezed == bids ? _self.bids : bids // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
