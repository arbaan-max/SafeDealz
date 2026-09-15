// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletDetail {

 String? get id; String? get vendorAccountId; int? get availablePaise; int? get reservedPaise; int? get processingPaise; int? get paymentsProcessingPaise; String? get currency; List<WalletLedgerEntry>? get ledger; List<WalletHold>? get reservations;
/// Create a copy of WalletDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletDetailCopyWith<WalletDetail> get copyWith => _$WalletDetailCopyWithImpl<WalletDetail>(this as WalletDetail, _$identity);

  /// Serializes this WalletDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorAccountId, vendorAccountId) || other.vendorAccountId == vendorAccountId)&&(identical(other.availablePaise, availablePaise) || other.availablePaise == availablePaise)&&(identical(other.reservedPaise, reservedPaise) || other.reservedPaise == reservedPaise)&&(identical(other.processingPaise, processingPaise) || other.processingPaise == processingPaise)&&(identical(other.paymentsProcessingPaise, paymentsProcessingPaise) || other.paymentsProcessingPaise == paymentsProcessingPaise)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.ledger, ledger)&&const DeepCollectionEquality().equals(other.reservations, reservations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,vendorAccountId,availablePaise,reservedPaise,processingPaise,paymentsProcessingPaise,currency,const DeepCollectionEquality().hash(ledger),const DeepCollectionEquality().hash(reservations));

@override
String toString() {
  return 'WalletDetail(id: $id, vendorAccountId: $vendorAccountId, availablePaise: $availablePaise, reservedPaise: $reservedPaise, processingPaise: $processingPaise, paymentsProcessingPaise: $paymentsProcessingPaise, currency: $currency, ledger: $ledger, reservations: $reservations)';
}


}

/// @nodoc
abstract mixin class $WalletDetailCopyWith<$Res>  {
  factory $WalletDetailCopyWith(WalletDetail value, $Res Function(WalletDetail) _then) = _$WalletDetailCopyWithImpl;
@useResult
$Res call({
 String? id, String? vendorAccountId, int? availablePaise, int? reservedPaise, int? processingPaise, int? paymentsProcessingPaise, String? currency, List<WalletLedgerEntry>? ledger, List<WalletHold>? reservations
});




}
/// @nodoc
class _$WalletDetailCopyWithImpl<$Res>
    implements $WalletDetailCopyWith<$Res> {
  _$WalletDetailCopyWithImpl(this._self, this._then);

  final WalletDetail _self;
  final $Res Function(WalletDetail) _then;

/// Create a copy of WalletDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? vendorAccountId = freezed,Object? availablePaise = freezed,Object? reservedPaise = freezed,Object? processingPaise = freezed,Object? paymentsProcessingPaise = freezed,Object? currency = freezed,Object? ledger = freezed,Object? reservations = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,vendorAccountId: freezed == vendorAccountId ? _self.vendorAccountId : vendorAccountId // ignore: cast_nullable_to_non_nullable
as String?,availablePaise: freezed == availablePaise ? _self.availablePaise : availablePaise // ignore: cast_nullable_to_non_nullable
as int?,reservedPaise: freezed == reservedPaise ? _self.reservedPaise : reservedPaise // ignore: cast_nullable_to_non_nullable
as int?,processingPaise: freezed == processingPaise ? _self.processingPaise : processingPaise // ignore: cast_nullable_to_non_nullable
as int?,paymentsProcessingPaise: freezed == paymentsProcessingPaise ? _self.paymentsProcessingPaise : paymentsProcessingPaise // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,ledger: freezed == ledger ? _self.ledger : ledger // ignore: cast_nullable_to_non_nullable
as List<WalletLedgerEntry>?,reservations: freezed == reservations ? _self.reservations : reservations // ignore: cast_nullable_to_non_nullable
as List<WalletHold>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletDetail].
extension WalletDetailPatterns on WalletDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletDetail value)  $default,){
final _that = this;
switch (_that) {
case _WalletDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletDetail value)?  $default,){
final _that = this;
switch (_that) {
case _WalletDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? vendorAccountId,  int? availablePaise,  int? reservedPaise,  int? processingPaise,  int? paymentsProcessingPaise,  String? currency,  List<WalletLedgerEntry>? ledger,  List<WalletHold>? reservations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletDetail() when $default != null:
return $default(_that.id,_that.vendorAccountId,_that.availablePaise,_that.reservedPaise,_that.processingPaise,_that.paymentsProcessingPaise,_that.currency,_that.ledger,_that.reservations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? vendorAccountId,  int? availablePaise,  int? reservedPaise,  int? processingPaise,  int? paymentsProcessingPaise,  String? currency,  List<WalletLedgerEntry>? ledger,  List<WalletHold>? reservations)  $default,) {final _that = this;
switch (_that) {
case _WalletDetail():
return $default(_that.id,_that.vendorAccountId,_that.availablePaise,_that.reservedPaise,_that.processingPaise,_that.paymentsProcessingPaise,_that.currency,_that.ledger,_that.reservations);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? vendorAccountId,  int? availablePaise,  int? reservedPaise,  int? processingPaise,  int? paymentsProcessingPaise,  String? currency,  List<WalletLedgerEntry>? ledger,  List<WalletHold>? reservations)?  $default,) {final _that = this;
switch (_that) {
case _WalletDetail() when $default != null:
return $default(_that.id,_that.vendorAccountId,_that.availablePaise,_that.reservedPaise,_that.processingPaise,_that.paymentsProcessingPaise,_that.currency,_that.ledger,_that.reservations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletDetail implements WalletDetail {
  const _WalletDetail({this.id, this.vendorAccountId, this.availablePaise, this.reservedPaise, this.processingPaise, this.paymentsProcessingPaise, this.currency, final  List<WalletLedgerEntry>? ledger, final  List<WalletHold>? reservations}): _ledger = ledger,_reservations = reservations;
  factory _WalletDetail.fromJson(Map<String, dynamic> json) => _$WalletDetailFromJson(json);

@override final  String? id;
@override final  String? vendorAccountId;
@override final  int? availablePaise;
@override final  int? reservedPaise;
@override final  int? processingPaise;
@override final  int? paymentsProcessingPaise;
@override final  String? currency;
 final  List<WalletLedgerEntry>? _ledger;
@override List<WalletLedgerEntry>? get ledger {
  final value = _ledger;
  if (value == null) return null;
  if (_ledger is EqualUnmodifiableListView) return _ledger;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<WalletHold>? _reservations;
@override List<WalletHold>? get reservations {
  final value = _reservations;
  if (value == null) return null;
  if (_reservations is EqualUnmodifiableListView) return _reservations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WalletDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletDetailCopyWith<_WalletDetail> get copyWith => __$WalletDetailCopyWithImpl<_WalletDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorAccountId, vendorAccountId) || other.vendorAccountId == vendorAccountId)&&(identical(other.availablePaise, availablePaise) || other.availablePaise == availablePaise)&&(identical(other.reservedPaise, reservedPaise) || other.reservedPaise == reservedPaise)&&(identical(other.processingPaise, processingPaise) || other.processingPaise == processingPaise)&&(identical(other.paymentsProcessingPaise, paymentsProcessingPaise) || other.paymentsProcessingPaise == paymentsProcessingPaise)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._ledger, _ledger)&&const DeepCollectionEquality().equals(other._reservations, _reservations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,vendorAccountId,availablePaise,reservedPaise,processingPaise,paymentsProcessingPaise,currency,const DeepCollectionEquality().hash(_ledger),const DeepCollectionEquality().hash(_reservations));

@override
String toString() {
  return 'WalletDetail(id: $id, vendorAccountId: $vendorAccountId, availablePaise: $availablePaise, reservedPaise: $reservedPaise, processingPaise: $processingPaise, paymentsProcessingPaise: $paymentsProcessingPaise, currency: $currency, ledger: $ledger, reservations: $reservations)';
}


}

/// @nodoc
abstract mixin class _$WalletDetailCopyWith<$Res> implements $WalletDetailCopyWith<$Res> {
  factory _$WalletDetailCopyWith(_WalletDetail value, $Res Function(_WalletDetail) _then) = __$WalletDetailCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? vendorAccountId, int? availablePaise, int? reservedPaise, int? processingPaise, int? paymentsProcessingPaise, String? currency, List<WalletLedgerEntry>? ledger, List<WalletHold>? reservations
});




}
/// @nodoc
class __$WalletDetailCopyWithImpl<$Res>
    implements _$WalletDetailCopyWith<$Res> {
  __$WalletDetailCopyWithImpl(this._self, this._then);

  final _WalletDetail _self;
  final $Res Function(_WalletDetail) _then;

/// Create a copy of WalletDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? vendorAccountId = freezed,Object? availablePaise = freezed,Object? reservedPaise = freezed,Object? processingPaise = freezed,Object? paymentsProcessingPaise = freezed,Object? currency = freezed,Object? ledger = freezed,Object? reservations = freezed,}) {
  return _then(_WalletDetail(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,vendorAccountId: freezed == vendorAccountId ? _self.vendorAccountId : vendorAccountId // ignore: cast_nullable_to_non_nullable
as String?,availablePaise: freezed == availablePaise ? _self.availablePaise : availablePaise // ignore: cast_nullable_to_non_nullable
as int?,reservedPaise: freezed == reservedPaise ? _self.reservedPaise : reservedPaise // ignore: cast_nullable_to_non_nullable
as int?,processingPaise: freezed == processingPaise ? _self.processingPaise : processingPaise // ignore: cast_nullable_to_non_nullable
as int?,paymentsProcessingPaise: freezed == paymentsProcessingPaise ? _self.paymentsProcessingPaise : paymentsProcessingPaise // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,ledger: freezed == ledger ? _self._ledger : ledger // ignore: cast_nullable_to_non_nullable
as List<WalletLedgerEntry>?,reservations: freezed == reservations ? _self._reservations : reservations // ignore: cast_nullable_to_non_nullable
as List<WalletHold>?,
  ));
}


}

// dart format on
