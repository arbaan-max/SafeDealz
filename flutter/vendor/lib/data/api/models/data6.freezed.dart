// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data6.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Data6 {

 int? get closedCount; List<AuctionRound>? get closed; int? get expiredCount; List<AuctionRound>? get expired;
/// Create a copy of Data6
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Data6CopyWith<Data6> get copyWith => _$Data6CopyWithImpl<Data6>(this as Data6, _$identity);

  /// Serializes this Data6 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data6&&(identical(other.closedCount, closedCount) || other.closedCount == closedCount)&&const DeepCollectionEquality().equals(other.closed, closed)&&(identical(other.expiredCount, expiredCount) || other.expiredCount == expiredCount)&&const DeepCollectionEquality().equals(other.expired, expired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,closedCount,const DeepCollectionEquality().hash(closed),expiredCount,const DeepCollectionEquality().hash(expired));

@override
String toString() {
  return 'Data6(closedCount: $closedCount, closed: $closed, expiredCount: $expiredCount, expired: $expired)';
}


}

/// @nodoc
abstract mixin class $Data6CopyWith<$Res>  {
  factory $Data6CopyWith(Data6 value, $Res Function(Data6) _then) = _$Data6CopyWithImpl;
@useResult
$Res call({
 int? closedCount, List<AuctionRound>? closed, int? expiredCount, List<AuctionRound>? expired
});




}
/// @nodoc
class _$Data6CopyWithImpl<$Res>
    implements $Data6CopyWith<$Res> {
  _$Data6CopyWithImpl(this._self, this._then);

  final Data6 _self;
  final $Res Function(Data6) _then;

/// Create a copy of Data6
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? closedCount = freezed,Object? closed = freezed,Object? expiredCount = freezed,Object? expired = freezed,}) {
  return _then(_self.copyWith(
closedCount: freezed == closedCount ? _self.closedCount : closedCount // ignore: cast_nullable_to_non_nullable
as int?,closed: freezed == closed ? _self.closed : closed // ignore: cast_nullable_to_non_nullable
as List<AuctionRound>?,expiredCount: freezed == expiredCount ? _self.expiredCount : expiredCount // ignore: cast_nullable_to_non_nullable
as int?,expired: freezed == expired ? _self.expired : expired // ignore: cast_nullable_to_non_nullable
as List<AuctionRound>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Data6].
extension Data6Patterns on Data6 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data6 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data6() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data6 value)  $default,){
final _that = this;
switch (_that) {
case _Data6():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data6 value)?  $default,){
final _that = this;
switch (_that) {
case _Data6() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? closedCount,  List<AuctionRound>? closed,  int? expiredCount,  List<AuctionRound>? expired)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data6() when $default != null:
return $default(_that.closedCount,_that.closed,_that.expiredCount,_that.expired);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? closedCount,  List<AuctionRound>? closed,  int? expiredCount,  List<AuctionRound>? expired)  $default,) {final _that = this;
switch (_that) {
case _Data6():
return $default(_that.closedCount,_that.closed,_that.expiredCount,_that.expired);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? closedCount,  List<AuctionRound>? closed,  int? expiredCount,  List<AuctionRound>? expired)?  $default,) {final _that = this;
switch (_that) {
case _Data6() when $default != null:
return $default(_that.closedCount,_that.closed,_that.expiredCount,_that.expired);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data6 implements Data6 {
  const _Data6({this.closedCount, final  List<AuctionRound>? closed, this.expiredCount, final  List<AuctionRound>? expired}): _closed = closed,_expired = expired;
  factory _Data6.fromJson(Map<String, dynamic> json) => _$Data6FromJson(json);

@override final  int? closedCount;
 final  List<AuctionRound>? _closed;
@override List<AuctionRound>? get closed {
  final value = _closed;
  if (value == null) return null;
  if (_closed is EqualUnmodifiableListView) return _closed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? expiredCount;
 final  List<AuctionRound>? _expired;
@override List<AuctionRound>? get expired {
  final value = _expired;
  if (value == null) return null;
  if (_expired is EqualUnmodifiableListView) return _expired;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Data6
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Data6CopyWith<_Data6> get copyWith => __$Data6CopyWithImpl<_Data6>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Data6ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data6&&(identical(other.closedCount, closedCount) || other.closedCount == closedCount)&&const DeepCollectionEquality().equals(other._closed, _closed)&&(identical(other.expiredCount, expiredCount) || other.expiredCount == expiredCount)&&const DeepCollectionEquality().equals(other._expired, _expired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,closedCount,const DeepCollectionEquality().hash(_closed),expiredCount,const DeepCollectionEquality().hash(_expired));

@override
String toString() {
  return 'Data6(closedCount: $closedCount, closed: $closed, expiredCount: $expiredCount, expired: $expired)';
}


}

/// @nodoc
abstract mixin class _$Data6CopyWith<$Res> implements $Data6CopyWith<$Res> {
  factory _$Data6CopyWith(_Data6 value, $Res Function(_Data6) _then) = __$Data6CopyWithImpl;
@override @useResult
$Res call({
 int? closedCount, List<AuctionRound>? closed, int? expiredCount, List<AuctionRound>? expired
});




}
/// @nodoc
class __$Data6CopyWithImpl<$Res>
    implements _$Data6CopyWith<$Res> {
  __$Data6CopyWithImpl(this._self, this._then);

  final _Data6 _self;
  final $Res Function(_Data6) _then;

/// Create a copy of Data6
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? closedCount = freezed,Object? closed = freezed,Object? expiredCount = freezed,Object? expired = freezed,}) {
  return _then(_Data6(
closedCount: freezed == closedCount ? _self.closedCount : closedCount // ignore: cast_nullable_to_non_nullable
as int?,closed: freezed == closed ? _self._closed : closed // ignore: cast_nullable_to_non_nullable
as List<AuctionRound>?,expiredCount: freezed == expiredCount ? _self.expiredCount : expiredCount // ignore: cast_nullable_to_non_nullable
as int?,expired: freezed == expired ? _self._expired : expired // ignore: cast_nullable_to_non_nullable
as List<AuctionRound>?,
  ));
}


}

// dart format on
