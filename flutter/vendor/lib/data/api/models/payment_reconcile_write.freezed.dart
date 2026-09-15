// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_reconcile_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentReconcileWrite {

 PaymentReconcileWriteOutcome get outcome;
/// Create a copy of PaymentReconcileWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentReconcileWriteCopyWith<PaymentReconcileWrite> get copyWith => _$PaymentReconcileWriteCopyWithImpl<PaymentReconcileWrite>(this as PaymentReconcileWrite, _$identity);

  /// Serializes this PaymentReconcileWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentReconcileWrite&&(identical(other.outcome, outcome) || other.outcome == outcome));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,outcome);

@override
String toString() {
  return 'PaymentReconcileWrite(outcome: $outcome)';
}


}

/// @nodoc
abstract mixin class $PaymentReconcileWriteCopyWith<$Res>  {
  factory $PaymentReconcileWriteCopyWith(PaymentReconcileWrite value, $Res Function(PaymentReconcileWrite) _then) = _$PaymentReconcileWriteCopyWithImpl;
@useResult
$Res call({
 PaymentReconcileWriteOutcome outcome
});




}
/// @nodoc
class _$PaymentReconcileWriteCopyWithImpl<$Res>
    implements $PaymentReconcileWriteCopyWith<$Res> {
  _$PaymentReconcileWriteCopyWithImpl(this._self, this._then);

  final PaymentReconcileWrite _self;
  final $Res Function(PaymentReconcileWrite) _then;

/// Create a copy of PaymentReconcileWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? outcome = null,}) {
  return _then(_self.copyWith(
outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as PaymentReconcileWriteOutcome,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentReconcileWrite].
extension PaymentReconcileWritePatterns on PaymentReconcileWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentReconcileWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentReconcileWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentReconcileWrite value)  $default,){
final _that = this;
switch (_that) {
case _PaymentReconcileWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentReconcileWrite value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentReconcileWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PaymentReconcileWriteOutcome outcome)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentReconcileWrite() when $default != null:
return $default(_that.outcome);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PaymentReconcileWriteOutcome outcome)  $default,) {final _that = this;
switch (_that) {
case _PaymentReconcileWrite():
return $default(_that.outcome);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PaymentReconcileWriteOutcome outcome)?  $default,) {final _that = this;
switch (_that) {
case _PaymentReconcileWrite() when $default != null:
return $default(_that.outcome);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentReconcileWrite implements PaymentReconcileWrite {
  const _PaymentReconcileWrite({required this.outcome});
  factory _PaymentReconcileWrite.fromJson(Map<String, dynamic> json) => _$PaymentReconcileWriteFromJson(json);

@override final  PaymentReconcileWriteOutcome outcome;

/// Create a copy of PaymentReconcileWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentReconcileWriteCopyWith<_PaymentReconcileWrite> get copyWith => __$PaymentReconcileWriteCopyWithImpl<_PaymentReconcileWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentReconcileWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentReconcileWrite&&(identical(other.outcome, outcome) || other.outcome == outcome));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,outcome);

@override
String toString() {
  return 'PaymentReconcileWrite(outcome: $outcome)';
}


}

/// @nodoc
abstract mixin class _$PaymentReconcileWriteCopyWith<$Res> implements $PaymentReconcileWriteCopyWith<$Res> {
  factory _$PaymentReconcileWriteCopyWith(_PaymentReconcileWrite value, $Res Function(_PaymentReconcileWrite) _then) = __$PaymentReconcileWriteCopyWithImpl;
@override @useResult
$Res call({
 PaymentReconcileWriteOutcome outcome
});




}
/// @nodoc
class __$PaymentReconcileWriteCopyWithImpl<$Res>
    implements _$PaymentReconcileWriteCopyWith<$Res> {
  __$PaymentReconcileWriteCopyWithImpl(this._self, this._then);

  final _PaymentReconcileWrite _self;
  final $Res Function(_PaymentReconcileWrite) _then;

/// Create a copy of PaymentReconcileWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? outcome = null,}) {
  return _then(_PaymentReconcileWrite(
outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as PaymentReconcileWriteOutcome,
  ));
}


}

// dart format on
