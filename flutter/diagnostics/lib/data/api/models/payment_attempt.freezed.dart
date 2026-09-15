// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_attempt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentAttempt {

 DateTime? get at; String? get event; String? get status; String? get note;
/// Create a copy of PaymentAttempt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentAttemptCopyWith<PaymentAttempt> get copyWith => _$PaymentAttemptCopyWithImpl<PaymentAttempt>(this as PaymentAttempt, _$identity);

  /// Serializes this PaymentAttempt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentAttempt&&(identical(other.at, at) || other.at == at)&&(identical(other.event, event) || other.event == event)&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,at,event,status,note);

@override
String toString() {
  return 'PaymentAttempt(at: $at, event: $event, status: $status, note: $note)';
}


}

/// @nodoc
abstract mixin class $PaymentAttemptCopyWith<$Res>  {
  factory $PaymentAttemptCopyWith(PaymentAttempt value, $Res Function(PaymentAttempt) _then) = _$PaymentAttemptCopyWithImpl;
@useResult
$Res call({
 DateTime? at, String? event, String? status, String? note
});




}
/// @nodoc
class _$PaymentAttemptCopyWithImpl<$Res>
    implements $PaymentAttemptCopyWith<$Res> {
  _$PaymentAttemptCopyWithImpl(this._self, this._then);

  final PaymentAttempt _self;
  final $Res Function(PaymentAttempt) _then;

/// Create a copy of PaymentAttempt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? at = freezed,Object? event = freezed,Object? status = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
at: freezed == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime?,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentAttempt].
extension PaymentAttemptPatterns on PaymentAttempt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentAttempt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentAttempt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentAttempt value)  $default,){
final _that = this;
switch (_that) {
case _PaymentAttempt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentAttempt value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentAttempt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? at,  String? event,  String? status,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentAttempt() when $default != null:
return $default(_that.at,_that.event,_that.status,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? at,  String? event,  String? status,  String? note)  $default,) {final _that = this;
switch (_that) {
case _PaymentAttempt():
return $default(_that.at,_that.event,_that.status,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? at,  String? event,  String? status,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _PaymentAttempt() when $default != null:
return $default(_that.at,_that.event,_that.status,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentAttempt implements PaymentAttempt {
  const _PaymentAttempt({this.at, this.event, this.status, this.note});
  factory _PaymentAttempt.fromJson(Map<String, dynamic> json) => _$PaymentAttemptFromJson(json);

@override final  DateTime? at;
@override final  String? event;
@override final  String? status;
@override final  String? note;

/// Create a copy of PaymentAttempt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentAttemptCopyWith<_PaymentAttempt> get copyWith => __$PaymentAttemptCopyWithImpl<_PaymentAttempt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentAttemptToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentAttempt&&(identical(other.at, at) || other.at == at)&&(identical(other.event, event) || other.event == event)&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,at,event,status,note);

@override
String toString() {
  return 'PaymentAttempt(at: $at, event: $event, status: $status, note: $note)';
}


}

/// @nodoc
abstract mixin class _$PaymentAttemptCopyWith<$Res> implements $PaymentAttemptCopyWith<$Res> {
  factory _$PaymentAttemptCopyWith(_PaymentAttempt value, $Res Function(_PaymentAttempt) _then) = __$PaymentAttemptCopyWithImpl;
@override @useResult
$Res call({
 DateTime? at, String? event, String? status, String? note
});




}
/// @nodoc
class __$PaymentAttemptCopyWithImpl<$Res>
    implements _$PaymentAttemptCopyWith<$Res> {
  __$PaymentAttemptCopyWithImpl(this._self, this._then);

  final _PaymentAttempt _self;
  final $Res Function(_PaymentAttempt) _then;

/// Create a copy of PaymentAttempt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? at = freezed,Object? event = freezed,Object? status = freezed,Object? note = freezed,}) {
  return _then(_PaymentAttempt(
at: freezed == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime?,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
