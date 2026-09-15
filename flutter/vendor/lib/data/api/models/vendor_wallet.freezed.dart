// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendorWallet {

 String? get id; String? get vendorAccountId; int? get availablePaise; int? get reservedPaise; int? get processingPaise; int? get paymentsProcessingPaise; String? get currency;
/// Create a copy of VendorWallet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorWalletCopyWith<VendorWallet> get copyWith => _$VendorWalletCopyWithImpl<VendorWallet>(this as VendorWallet, _$identity);

  /// Serializes this VendorWallet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorWallet&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorAccountId, vendorAccountId) || other.vendorAccountId == vendorAccountId)&&(identical(other.availablePaise, availablePaise) || other.availablePaise == availablePaise)&&(identical(other.reservedPaise, reservedPaise) || other.reservedPaise == reservedPaise)&&(identical(other.processingPaise, processingPaise) || other.processingPaise == processingPaise)&&(identical(other.paymentsProcessingPaise, paymentsProcessingPaise) || other.paymentsProcessingPaise == paymentsProcessingPaise)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,vendorAccountId,availablePaise,reservedPaise,processingPaise,paymentsProcessingPaise,currency);

@override
String toString() {
  return 'VendorWallet(id: $id, vendorAccountId: $vendorAccountId, availablePaise: $availablePaise, reservedPaise: $reservedPaise, processingPaise: $processingPaise, paymentsProcessingPaise: $paymentsProcessingPaise, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $VendorWalletCopyWith<$Res>  {
  factory $VendorWalletCopyWith(VendorWallet value, $Res Function(VendorWallet) _then) = _$VendorWalletCopyWithImpl;
@useResult
$Res call({
 String? id, String? vendorAccountId, int? availablePaise, int? reservedPaise, int? processingPaise, int? paymentsProcessingPaise, String? currency
});




}
/// @nodoc
class _$VendorWalletCopyWithImpl<$Res>
    implements $VendorWalletCopyWith<$Res> {
  _$VendorWalletCopyWithImpl(this._self, this._then);

  final VendorWallet _self;
  final $Res Function(VendorWallet) _then;

/// Create a copy of VendorWallet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? vendorAccountId = freezed,Object? availablePaise = freezed,Object? reservedPaise = freezed,Object? processingPaise = freezed,Object? paymentsProcessingPaise = freezed,Object? currency = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,vendorAccountId: freezed == vendorAccountId ? _self.vendorAccountId : vendorAccountId // ignore: cast_nullable_to_non_nullable
as String?,availablePaise: freezed == availablePaise ? _self.availablePaise : availablePaise // ignore: cast_nullable_to_non_nullable
as int?,reservedPaise: freezed == reservedPaise ? _self.reservedPaise : reservedPaise // ignore: cast_nullable_to_non_nullable
as int?,processingPaise: freezed == processingPaise ? _self.processingPaise : processingPaise // ignore: cast_nullable_to_non_nullable
as int?,paymentsProcessingPaise: freezed == paymentsProcessingPaise ? _self.paymentsProcessingPaise : paymentsProcessingPaise // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VendorWallet].
extension VendorWalletPatterns on VendorWallet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorWallet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorWallet() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorWallet value)  $default,){
final _that = this;
switch (_that) {
case _VendorWallet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorWallet value)?  $default,){
final _that = this;
switch (_that) {
case _VendorWallet() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? vendorAccountId,  int? availablePaise,  int? reservedPaise,  int? processingPaise,  int? paymentsProcessingPaise,  String? currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorWallet() when $default != null:
return $default(_that.id,_that.vendorAccountId,_that.availablePaise,_that.reservedPaise,_that.processingPaise,_that.paymentsProcessingPaise,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? vendorAccountId,  int? availablePaise,  int? reservedPaise,  int? processingPaise,  int? paymentsProcessingPaise,  String? currency)  $default,) {final _that = this;
switch (_that) {
case _VendorWallet():
return $default(_that.id,_that.vendorAccountId,_that.availablePaise,_that.reservedPaise,_that.processingPaise,_that.paymentsProcessingPaise,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? vendorAccountId,  int? availablePaise,  int? reservedPaise,  int? processingPaise,  int? paymentsProcessingPaise,  String? currency)?  $default,) {final _that = this;
switch (_that) {
case _VendorWallet() when $default != null:
return $default(_that.id,_that.vendorAccountId,_that.availablePaise,_that.reservedPaise,_that.processingPaise,_that.paymentsProcessingPaise,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorWallet implements VendorWallet {
  const _VendorWallet({this.id, this.vendorAccountId, this.availablePaise, this.reservedPaise, this.processingPaise, this.paymentsProcessingPaise, this.currency});
  factory _VendorWallet.fromJson(Map<String, dynamic> json) => _$VendorWalletFromJson(json);

@override final  String? id;
@override final  String? vendorAccountId;
@override final  int? availablePaise;
@override final  int? reservedPaise;
@override final  int? processingPaise;
@override final  int? paymentsProcessingPaise;
@override final  String? currency;

/// Create a copy of VendorWallet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorWalletCopyWith<_VendorWallet> get copyWith => __$VendorWalletCopyWithImpl<_VendorWallet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorWalletToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorWallet&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorAccountId, vendorAccountId) || other.vendorAccountId == vendorAccountId)&&(identical(other.availablePaise, availablePaise) || other.availablePaise == availablePaise)&&(identical(other.reservedPaise, reservedPaise) || other.reservedPaise == reservedPaise)&&(identical(other.processingPaise, processingPaise) || other.processingPaise == processingPaise)&&(identical(other.paymentsProcessingPaise, paymentsProcessingPaise) || other.paymentsProcessingPaise == paymentsProcessingPaise)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,vendorAccountId,availablePaise,reservedPaise,processingPaise,paymentsProcessingPaise,currency);

@override
String toString() {
  return 'VendorWallet(id: $id, vendorAccountId: $vendorAccountId, availablePaise: $availablePaise, reservedPaise: $reservedPaise, processingPaise: $processingPaise, paymentsProcessingPaise: $paymentsProcessingPaise, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$VendorWalletCopyWith<$Res> implements $VendorWalletCopyWith<$Res> {
  factory _$VendorWalletCopyWith(_VendorWallet value, $Res Function(_VendorWallet) _then) = __$VendorWalletCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? vendorAccountId, int? availablePaise, int? reservedPaise, int? processingPaise, int? paymentsProcessingPaise, String? currency
});




}
/// @nodoc
class __$VendorWalletCopyWithImpl<$Res>
    implements _$VendorWalletCopyWith<$Res> {
  __$VendorWalletCopyWithImpl(this._self, this._then);

  final _VendorWallet _self;
  final $Res Function(_VendorWallet) _then;

/// Create a copy of VendorWallet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? vendorAccountId = freezed,Object? availablePaise = freezed,Object? reservedPaise = freezed,Object? processingPaise = freezed,Object? paymentsProcessingPaise = freezed,Object? currency = freezed,}) {
  return _then(_VendorWallet(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,vendorAccountId: freezed == vendorAccountId ? _self.vendorAccountId : vendorAccountId // ignore: cast_nullable_to_non_nullable
as String?,availablePaise: freezed == availablePaise ? _self.availablePaise : availablePaise // ignore: cast_nullable_to_non_nullable
as int?,reservedPaise: freezed == reservedPaise ? _self.reservedPaise : reservedPaise // ignore: cast_nullable_to_non_nullable
as int?,processingPaise: freezed == processingPaise ? _self.processingPaise : processingPaise // ignore: cast_nullable_to_non_nullable
as int?,paymentsProcessingPaise: freezed == paymentsProcessingPaise ? _self.paymentsProcessingPaise : paymentsProcessingPaise // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
