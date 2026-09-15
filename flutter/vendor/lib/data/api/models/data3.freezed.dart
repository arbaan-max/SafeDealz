// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Data3 {

 AuctionRound get previous; AuctionRound get next;
/// Create a copy of Data3
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Data3CopyWith<Data3> get copyWith => _$Data3CopyWithImpl<Data3>(this as Data3, _$identity);

  /// Serializes this Data3 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data3&&(identical(other.previous, previous) || other.previous == previous)&&(identical(other.next, next) || other.next == next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,previous,next);

@override
String toString() {
  return 'Data3(previous: $previous, next: $next)';
}


}

/// @nodoc
abstract mixin class $Data3CopyWith<$Res>  {
  factory $Data3CopyWith(Data3 value, $Res Function(Data3) _then) = _$Data3CopyWithImpl;
@useResult
$Res call({
 AuctionRound previous, AuctionRound next
});


$AuctionRoundCopyWith<$Res> get previous;$AuctionRoundCopyWith<$Res> get next;

}
/// @nodoc
class _$Data3CopyWithImpl<$Res>
    implements $Data3CopyWith<$Res> {
  _$Data3CopyWithImpl(this._self, this._then);

  final Data3 _self;
  final $Res Function(Data3) _then;

/// Create a copy of Data3
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? previous = null,Object? next = null,}) {
  return _then(_self.copyWith(
previous: null == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as AuctionRound,next: null == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as AuctionRound,
  ));
}
/// Create a copy of Data3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionRoundCopyWith<$Res> get previous {
  
  return $AuctionRoundCopyWith<$Res>(_self.previous, (value) {
    return _then(_self.copyWith(previous: value));
  });
}/// Create a copy of Data3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionRoundCopyWith<$Res> get next {
  
  return $AuctionRoundCopyWith<$Res>(_self.next, (value) {
    return _then(_self.copyWith(next: value));
  });
}
}


/// Adds pattern-matching-related methods to [Data3].
extension Data3Patterns on Data3 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data3 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data3() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data3 value)  $default,){
final _that = this;
switch (_that) {
case _Data3():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data3 value)?  $default,){
final _that = this;
switch (_that) {
case _Data3() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuctionRound previous,  AuctionRound next)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data3() when $default != null:
return $default(_that.previous,_that.next);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuctionRound previous,  AuctionRound next)  $default,) {final _that = this;
switch (_that) {
case _Data3():
return $default(_that.previous,_that.next);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuctionRound previous,  AuctionRound next)?  $default,) {final _that = this;
switch (_that) {
case _Data3() when $default != null:
return $default(_that.previous,_that.next);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data3 implements Data3 {
  const _Data3({required this.previous, required this.next});
  factory _Data3.fromJson(Map<String, dynamic> json) => _$Data3FromJson(json);

@override final  AuctionRound previous;
@override final  AuctionRound next;

/// Create a copy of Data3
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Data3CopyWith<_Data3> get copyWith => __$Data3CopyWithImpl<_Data3>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Data3ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data3&&(identical(other.previous, previous) || other.previous == previous)&&(identical(other.next, next) || other.next == next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,previous,next);

@override
String toString() {
  return 'Data3(previous: $previous, next: $next)';
}


}

/// @nodoc
abstract mixin class _$Data3CopyWith<$Res> implements $Data3CopyWith<$Res> {
  factory _$Data3CopyWith(_Data3 value, $Res Function(_Data3) _then) = __$Data3CopyWithImpl;
@override @useResult
$Res call({
 AuctionRound previous, AuctionRound next
});


@override $AuctionRoundCopyWith<$Res> get previous;@override $AuctionRoundCopyWith<$Res> get next;

}
/// @nodoc
class __$Data3CopyWithImpl<$Res>
    implements _$Data3CopyWith<$Res> {
  __$Data3CopyWithImpl(this._self, this._then);

  final _Data3 _self;
  final $Res Function(_Data3) _then;

/// Create a copy of Data3
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? previous = null,Object? next = null,}) {
  return _then(_Data3(
previous: null == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as AuctionRound,next: null == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as AuctionRound,
  ));
}

/// Create a copy of Data3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionRoundCopyWith<$Res> get previous {
  
  return $AuctionRoundCopyWith<$Res>(_self.previous, (value) {
    return _then(_self.copyWith(previous: value));
  });
}/// Create a copy of Data3
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionRoundCopyWith<$Res> get next {
  
  return $AuctionRoundCopyWith<$Res>(_self.next, (value) {
    return _then(_self.copyWith(next: value));
  });
}
}

// dart format on
