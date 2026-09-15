// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_reconciliation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillingReconciliation {

 int? get paidValuePaise; int? get rewardOutstandingValuePaise;
/// Create a copy of BillingReconciliation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillingReconciliationCopyWith<BillingReconciliation> get copyWith => _$BillingReconciliationCopyWithImpl<BillingReconciliation>(this as BillingReconciliation, _$identity);

  /// Serializes this BillingReconciliation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillingReconciliation&&(identical(other.paidValuePaise, paidValuePaise) || other.paidValuePaise == paidValuePaise)&&(identical(other.rewardOutstandingValuePaise, rewardOutstandingValuePaise) || other.rewardOutstandingValuePaise == rewardOutstandingValuePaise));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paidValuePaise,rewardOutstandingValuePaise);

@override
String toString() {
  return 'BillingReconciliation(paidValuePaise: $paidValuePaise, rewardOutstandingValuePaise: $rewardOutstandingValuePaise)';
}


}

/// @nodoc
abstract mixin class $BillingReconciliationCopyWith<$Res>  {
  factory $BillingReconciliationCopyWith(BillingReconciliation value, $Res Function(BillingReconciliation) _then) = _$BillingReconciliationCopyWithImpl;
@useResult
$Res call({
 int? paidValuePaise, int? rewardOutstandingValuePaise
});




}
/// @nodoc
class _$BillingReconciliationCopyWithImpl<$Res>
    implements $BillingReconciliationCopyWith<$Res> {
  _$BillingReconciliationCopyWithImpl(this._self, this._then);

  final BillingReconciliation _self;
  final $Res Function(BillingReconciliation) _then;

/// Create a copy of BillingReconciliation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paidValuePaise = freezed,Object? rewardOutstandingValuePaise = freezed,}) {
  return _then(_self.copyWith(
paidValuePaise: freezed == paidValuePaise ? _self.paidValuePaise : paidValuePaise // ignore: cast_nullable_to_non_nullable
as int?,rewardOutstandingValuePaise: freezed == rewardOutstandingValuePaise ? _self.rewardOutstandingValuePaise : rewardOutstandingValuePaise // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BillingReconciliation].
extension BillingReconciliationPatterns on BillingReconciliation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillingReconciliation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillingReconciliation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillingReconciliation value)  $default,){
final _that = this;
switch (_that) {
case _BillingReconciliation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillingReconciliation value)?  $default,){
final _that = this;
switch (_that) {
case _BillingReconciliation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? paidValuePaise,  int? rewardOutstandingValuePaise)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillingReconciliation() when $default != null:
return $default(_that.paidValuePaise,_that.rewardOutstandingValuePaise);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? paidValuePaise,  int? rewardOutstandingValuePaise)  $default,) {final _that = this;
switch (_that) {
case _BillingReconciliation():
return $default(_that.paidValuePaise,_that.rewardOutstandingValuePaise);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? paidValuePaise,  int? rewardOutstandingValuePaise)?  $default,) {final _that = this;
switch (_that) {
case _BillingReconciliation() when $default != null:
return $default(_that.paidValuePaise,_that.rewardOutstandingValuePaise);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillingReconciliation implements BillingReconciliation {
  const _BillingReconciliation({this.paidValuePaise, this.rewardOutstandingValuePaise});
  factory _BillingReconciliation.fromJson(Map<String, dynamic> json) => _$BillingReconciliationFromJson(json);

@override final  int? paidValuePaise;
@override final  int? rewardOutstandingValuePaise;

/// Create a copy of BillingReconciliation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillingReconciliationCopyWith<_BillingReconciliation> get copyWith => __$BillingReconciliationCopyWithImpl<_BillingReconciliation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillingReconciliationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillingReconciliation&&(identical(other.paidValuePaise, paidValuePaise) || other.paidValuePaise == paidValuePaise)&&(identical(other.rewardOutstandingValuePaise, rewardOutstandingValuePaise) || other.rewardOutstandingValuePaise == rewardOutstandingValuePaise));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paidValuePaise,rewardOutstandingValuePaise);

@override
String toString() {
  return 'BillingReconciliation(paidValuePaise: $paidValuePaise, rewardOutstandingValuePaise: $rewardOutstandingValuePaise)';
}


}

/// @nodoc
abstract mixin class _$BillingReconciliationCopyWith<$Res> implements $BillingReconciliationCopyWith<$Res> {
  factory _$BillingReconciliationCopyWith(_BillingReconciliation value, $Res Function(_BillingReconciliation) _then) = __$BillingReconciliationCopyWithImpl;
@override @useResult
$Res call({
 int? paidValuePaise, int? rewardOutstandingValuePaise
});




}
/// @nodoc
class __$BillingReconciliationCopyWithImpl<$Res>
    implements _$BillingReconciliationCopyWith<$Res> {
  __$BillingReconciliationCopyWithImpl(this._self, this._then);

  final _BillingReconciliation _self;
  final $Res Function(_BillingReconciliation) _then;

/// Create a copy of BillingReconciliation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paidValuePaise = freezed,Object? rewardOutstandingValuePaise = freezed,}) {
  return _then(_BillingReconciliation(
paidValuePaise: freezed == paidValuePaise ? _self.paidValuePaise : paidValuePaise // ignore: cast_nullable_to_non_nullable
as int?,rewardOutstandingValuePaise: freezed == rewardOutstandingValuePaise ? _self.rewardOutstandingValuePaise : rewardOutstandingValuePaise // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
