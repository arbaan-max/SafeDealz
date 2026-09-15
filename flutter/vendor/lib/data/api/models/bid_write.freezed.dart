// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BidWrite {

 int get amountPaise; String get idempotencyKey; int? get basePaise; int? get cosmeticDeductionPaise; int? get batteryDeductionPaise;
/// Create a copy of BidWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BidWriteCopyWith<BidWrite> get copyWith => _$BidWriteCopyWithImpl<BidWrite>(this as BidWrite, _$identity);

  /// Serializes this BidWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BidWrite&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.basePaise, basePaise) || other.basePaise == basePaise)&&(identical(other.cosmeticDeductionPaise, cosmeticDeductionPaise) || other.cosmeticDeductionPaise == cosmeticDeductionPaise)&&(identical(other.batteryDeductionPaise, batteryDeductionPaise) || other.batteryDeductionPaise == batteryDeductionPaise));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountPaise,idempotencyKey,basePaise,cosmeticDeductionPaise,batteryDeductionPaise);

@override
String toString() {
  return 'BidWrite(amountPaise: $amountPaise, idempotencyKey: $idempotencyKey, basePaise: $basePaise, cosmeticDeductionPaise: $cosmeticDeductionPaise, batteryDeductionPaise: $batteryDeductionPaise)';
}


}

/// @nodoc
abstract mixin class $BidWriteCopyWith<$Res>  {
  factory $BidWriteCopyWith(BidWrite value, $Res Function(BidWrite) _then) = _$BidWriteCopyWithImpl;
@useResult
$Res call({
 int amountPaise, String idempotencyKey, int? basePaise, int? cosmeticDeductionPaise, int? batteryDeductionPaise
});




}
/// @nodoc
class _$BidWriteCopyWithImpl<$Res>
    implements $BidWriteCopyWith<$Res> {
  _$BidWriteCopyWithImpl(this._self, this._then);

  final BidWrite _self;
  final $Res Function(BidWrite) _then;

/// Create a copy of BidWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amountPaise = null,Object? idempotencyKey = null,Object? basePaise = freezed,Object? cosmeticDeductionPaise = freezed,Object? batteryDeductionPaise = freezed,}) {
  return _then(_self.copyWith(
amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,basePaise: freezed == basePaise ? _self.basePaise : basePaise // ignore: cast_nullable_to_non_nullable
as int?,cosmeticDeductionPaise: freezed == cosmeticDeductionPaise ? _self.cosmeticDeductionPaise : cosmeticDeductionPaise // ignore: cast_nullable_to_non_nullable
as int?,batteryDeductionPaise: freezed == batteryDeductionPaise ? _self.batteryDeductionPaise : batteryDeductionPaise // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BidWrite].
extension BidWritePatterns on BidWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BidWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BidWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BidWrite value)  $default,){
final _that = this;
switch (_that) {
case _BidWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BidWrite value)?  $default,){
final _that = this;
switch (_that) {
case _BidWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int amountPaise,  String idempotencyKey,  int? basePaise,  int? cosmeticDeductionPaise,  int? batteryDeductionPaise)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BidWrite() when $default != null:
return $default(_that.amountPaise,_that.idempotencyKey,_that.basePaise,_that.cosmeticDeductionPaise,_that.batteryDeductionPaise);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int amountPaise,  String idempotencyKey,  int? basePaise,  int? cosmeticDeductionPaise,  int? batteryDeductionPaise)  $default,) {final _that = this;
switch (_that) {
case _BidWrite():
return $default(_that.amountPaise,_that.idempotencyKey,_that.basePaise,_that.cosmeticDeductionPaise,_that.batteryDeductionPaise);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int amountPaise,  String idempotencyKey,  int? basePaise,  int? cosmeticDeductionPaise,  int? batteryDeductionPaise)?  $default,) {final _that = this;
switch (_that) {
case _BidWrite() when $default != null:
return $default(_that.amountPaise,_that.idempotencyKey,_that.basePaise,_that.cosmeticDeductionPaise,_that.batteryDeductionPaise);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BidWrite implements BidWrite {
  const _BidWrite({required this.amountPaise, required this.idempotencyKey, this.basePaise, this.cosmeticDeductionPaise, this.batteryDeductionPaise});
  factory _BidWrite.fromJson(Map<String, dynamic> json) => _$BidWriteFromJson(json);

@override final  int amountPaise;
@override final  String idempotencyKey;
@override final  int? basePaise;
@override final  int? cosmeticDeductionPaise;
@override final  int? batteryDeductionPaise;

/// Create a copy of BidWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BidWriteCopyWith<_BidWrite> get copyWith => __$BidWriteCopyWithImpl<_BidWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BidWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BidWrite&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.basePaise, basePaise) || other.basePaise == basePaise)&&(identical(other.cosmeticDeductionPaise, cosmeticDeductionPaise) || other.cosmeticDeductionPaise == cosmeticDeductionPaise)&&(identical(other.batteryDeductionPaise, batteryDeductionPaise) || other.batteryDeductionPaise == batteryDeductionPaise));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountPaise,idempotencyKey,basePaise,cosmeticDeductionPaise,batteryDeductionPaise);

@override
String toString() {
  return 'BidWrite(amountPaise: $amountPaise, idempotencyKey: $idempotencyKey, basePaise: $basePaise, cosmeticDeductionPaise: $cosmeticDeductionPaise, batteryDeductionPaise: $batteryDeductionPaise)';
}


}

/// @nodoc
abstract mixin class _$BidWriteCopyWith<$Res> implements $BidWriteCopyWith<$Res> {
  factory _$BidWriteCopyWith(_BidWrite value, $Res Function(_BidWrite) _then) = __$BidWriteCopyWithImpl;
@override @useResult
$Res call({
 int amountPaise, String idempotencyKey, int? basePaise, int? cosmeticDeductionPaise, int? batteryDeductionPaise
});




}
/// @nodoc
class __$BidWriteCopyWithImpl<$Res>
    implements _$BidWriteCopyWith<$Res> {
  __$BidWriteCopyWithImpl(this._self, this._then);

  final _BidWrite _self;
  final $Res Function(_BidWrite) _then;

/// Create a copy of BidWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amountPaise = null,Object? idempotencyKey = null,Object? basePaise = freezed,Object? cosmeticDeductionPaise = freezed,Object? batteryDeductionPaise = freezed,}) {
  return _then(_BidWrite(
amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,basePaise: freezed == basePaise ? _self.basePaise : basePaise // ignore: cast_nullable_to_non_nullable
as int?,cosmeticDeductionPaise: freezed == cosmeticDeductionPaise ? _self.cosmeticDeductionPaise : cosmeticDeductionPaise // ignore: cast_nullable_to_non_nullable
as int?,batteryDeductionPaise: freezed == batteryDeductionPaise ? _self.batteryDeductionPaise : batteryDeductionPaise // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
