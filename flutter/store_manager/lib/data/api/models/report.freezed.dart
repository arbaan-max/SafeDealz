// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Report {

 AuctionConversion? get auctionConversion; int? get acceptedValuePaise; int? get paidValuePaise; int? get pickupCount; int? get walletMovementsPaise; int? get rewardIssuedPoints; int? get rewardRedeemedPoints; BillingReconciliation? get billingReconciliation;
/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportCopyWith<Report> get copyWith => _$ReportCopyWithImpl<Report>(this as Report, _$identity);

  /// Serializes this Report to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Report&&(identical(other.auctionConversion, auctionConversion) || other.auctionConversion == auctionConversion)&&(identical(other.acceptedValuePaise, acceptedValuePaise) || other.acceptedValuePaise == acceptedValuePaise)&&(identical(other.paidValuePaise, paidValuePaise) || other.paidValuePaise == paidValuePaise)&&(identical(other.pickupCount, pickupCount) || other.pickupCount == pickupCount)&&(identical(other.walletMovementsPaise, walletMovementsPaise) || other.walletMovementsPaise == walletMovementsPaise)&&(identical(other.rewardIssuedPoints, rewardIssuedPoints) || other.rewardIssuedPoints == rewardIssuedPoints)&&(identical(other.rewardRedeemedPoints, rewardRedeemedPoints) || other.rewardRedeemedPoints == rewardRedeemedPoints)&&(identical(other.billingReconciliation, billingReconciliation) || other.billingReconciliation == billingReconciliation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,auctionConversion,acceptedValuePaise,paidValuePaise,pickupCount,walletMovementsPaise,rewardIssuedPoints,rewardRedeemedPoints,billingReconciliation);

@override
String toString() {
  return 'Report(auctionConversion: $auctionConversion, acceptedValuePaise: $acceptedValuePaise, paidValuePaise: $paidValuePaise, pickupCount: $pickupCount, walletMovementsPaise: $walletMovementsPaise, rewardIssuedPoints: $rewardIssuedPoints, rewardRedeemedPoints: $rewardRedeemedPoints, billingReconciliation: $billingReconciliation)';
}


}

/// @nodoc
abstract mixin class $ReportCopyWith<$Res>  {
  factory $ReportCopyWith(Report value, $Res Function(Report) _then) = _$ReportCopyWithImpl;
@useResult
$Res call({
 AuctionConversion? auctionConversion, int? acceptedValuePaise, int? paidValuePaise, int? pickupCount, int? walletMovementsPaise, int? rewardIssuedPoints, int? rewardRedeemedPoints, BillingReconciliation? billingReconciliation
});


$AuctionConversionCopyWith<$Res>? get auctionConversion;$BillingReconciliationCopyWith<$Res>? get billingReconciliation;

}
/// @nodoc
class _$ReportCopyWithImpl<$Res>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._self, this._then);

  final Report _self;
  final $Res Function(Report) _then;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? auctionConversion = freezed,Object? acceptedValuePaise = freezed,Object? paidValuePaise = freezed,Object? pickupCount = freezed,Object? walletMovementsPaise = freezed,Object? rewardIssuedPoints = freezed,Object? rewardRedeemedPoints = freezed,Object? billingReconciliation = freezed,}) {
  return _then(_self.copyWith(
auctionConversion: freezed == auctionConversion ? _self.auctionConversion : auctionConversion // ignore: cast_nullable_to_non_nullable
as AuctionConversion?,acceptedValuePaise: freezed == acceptedValuePaise ? _self.acceptedValuePaise : acceptedValuePaise // ignore: cast_nullable_to_non_nullable
as int?,paidValuePaise: freezed == paidValuePaise ? _self.paidValuePaise : paidValuePaise // ignore: cast_nullable_to_non_nullable
as int?,pickupCount: freezed == pickupCount ? _self.pickupCount : pickupCount // ignore: cast_nullable_to_non_nullable
as int?,walletMovementsPaise: freezed == walletMovementsPaise ? _self.walletMovementsPaise : walletMovementsPaise // ignore: cast_nullable_to_non_nullable
as int?,rewardIssuedPoints: freezed == rewardIssuedPoints ? _self.rewardIssuedPoints : rewardIssuedPoints // ignore: cast_nullable_to_non_nullable
as int?,rewardRedeemedPoints: freezed == rewardRedeemedPoints ? _self.rewardRedeemedPoints : rewardRedeemedPoints // ignore: cast_nullable_to_non_nullable
as int?,billingReconciliation: freezed == billingReconciliation ? _self.billingReconciliation : billingReconciliation // ignore: cast_nullable_to_non_nullable
as BillingReconciliation?,
  ));
}
/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionConversionCopyWith<$Res>? get auctionConversion {
    if (_self.auctionConversion == null) {
    return null;
  }

  return $AuctionConversionCopyWith<$Res>(_self.auctionConversion!, (value) {
    return _then(_self.copyWith(auctionConversion: value));
  });
}/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillingReconciliationCopyWith<$Res>? get billingReconciliation {
    if (_self.billingReconciliation == null) {
    return null;
  }

  return $BillingReconciliationCopyWith<$Res>(_self.billingReconciliation!, (value) {
    return _then(_self.copyWith(billingReconciliation: value));
  });
}
}


/// Adds pattern-matching-related methods to [Report].
extension ReportPatterns on Report {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Report value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Report() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Report value)  $default,){
final _that = this;
switch (_that) {
case _Report():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Report value)?  $default,){
final _that = this;
switch (_that) {
case _Report() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuctionConversion? auctionConversion,  int? acceptedValuePaise,  int? paidValuePaise,  int? pickupCount,  int? walletMovementsPaise,  int? rewardIssuedPoints,  int? rewardRedeemedPoints,  BillingReconciliation? billingReconciliation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Report() when $default != null:
return $default(_that.auctionConversion,_that.acceptedValuePaise,_that.paidValuePaise,_that.pickupCount,_that.walletMovementsPaise,_that.rewardIssuedPoints,_that.rewardRedeemedPoints,_that.billingReconciliation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuctionConversion? auctionConversion,  int? acceptedValuePaise,  int? paidValuePaise,  int? pickupCount,  int? walletMovementsPaise,  int? rewardIssuedPoints,  int? rewardRedeemedPoints,  BillingReconciliation? billingReconciliation)  $default,) {final _that = this;
switch (_that) {
case _Report():
return $default(_that.auctionConversion,_that.acceptedValuePaise,_that.paidValuePaise,_that.pickupCount,_that.walletMovementsPaise,_that.rewardIssuedPoints,_that.rewardRedeemedPoints,_that.billingReconciliation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuctionConversion? auctionConversion,  int? acceptedValuePaise,  int? paidValuePaise,  int? pickupCount,  int? walletMovementsPaise,  int? rewardIssuedPoints,  int? rewardRedeemedPoints,  BillingReconciliation? billingReconciliation)?  $default,) {final _that = this;
switch (_that) {
case _Report() when $default != null:
return $default(_that.auctionConversion,_that.acceptedValuePaise,_that.paidValuePaise,_that.pickupCount,_that.walletMovementsPaise,_that.rewardIssuedPoints,_that.rewardRedeemedPoints,_that.billingReconciliation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Report implements Report {
  const _Report({this.auctionConversion, this.acceptedValuePaise, this.paidValuePaise, this.pickupCount, this.walletMovementsPaise, this.rewardIssuedPoints, this.rewardRedeemedPoints, this.billingReconciliation});
  factory _Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);

@override final  AuctionConversion? auctionConversion;
@override final  int? acceptedValuePaise;
@override final  int? paidValuePaise;
@override final  int? pickupCount;
@override final  int? walletMovementsPaise;
@override final  int? rewardIssuedPoints;
@override final  int? rewardRedeemedPoints;
@override final  BillingReconciliation? billingReconciliation;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportCopyWith<_Report> get copyWith => __$ReportCopyWithImpl<_Report>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Report&&(identical(other.auctionConversion, auctionConversion) || other.auctionConversion == auctionConversion)&&(identical(other.acceptedValuePaise, acceptedValuePaise) || other.acceptedValuePaise == acceptedValuePaise)&&(identical(other.paidValuePaise, paidValuePaise) || other.paidValuePaise == paidValuePaise)&&(identical(other.pickupCount, pickupCount) || other.pickupCount == pickupCount)&&(identical(other.walletMovementsPaise, walletMovementsPaise) || other.walletMovementsPaise == walletMovementsPaise)&&(identical(other.rewardIssuedPoints, rewardIssuedPoints) || other.rewardIssuedPoints == rewardIssuedPoints)&&(identical(other.rewardRedeemedPoints, rewardRedeemedPoints) || other.rewardRedeemedPoints == rewardRedeemedPoints)&&(identical(other.billingReconciliation, billingReconciliation) || other.billingReconciliation == billingReconciliation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,auctionConversion,acceptedValuePaise,paidValuePaise,pickupCount,walletMovementsPaise,rewardIssuedPoints,rewardRedeemedPoints,billingReconciliation);

@override
String toString() {
  return 'Report(auctionConversion: $auctionConversion, acceptedValuePaise: $acceptedValuePaise, paidValuePaise: $paidValuePaise, pickupCount: $pickupCount, walletMovementsPaise: $walletMovementsPaise, rewardIssuedPoints: $rewardIssuedPoints, rewardRedeemedPoints: $rewardRedeemedPoints, billingReconciliation: $billingReconciliation)';
}


}

/// @nodoc
abstract mixin class _$ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$ReportCopyWith(_Report value, $Res Function(_Report) _then) = __$ReportCopyWithImpl;
@override @useResult
$Res call({
 AuctionConversion? auctionConversion, int? acceptedValuePaise, int? paidValuePaise, int? pickupCount, int? walletMovementsPaise, int? rewardIssuedPoints, int? rewardRedeemedPoints, BillingReconciliation? billingReconciliation
});


@override $AuctionConversionCopyWith<$Res>? get auctionConversion;@override $BillingReconciliationCopyWith<$Res>? get billingReconciliation;

}
/// @nodoc
class __$ReportCopyWithImpl<$Res>
    implements _$ReportCopyWith<$Res> {
  __$ReportCopyWithImpl(this._self, this._then);

  final _Report _self;
  final $Res Function(_Report) _then;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? auctionConversion = freezed,Object? acceptedValuePaise = freezed,Object? paidValuePaise = freezed,Object? pickupCount = freezed,Object? walletMovementsPaise = freezed,Object? rewardIssuedPoints = freezed,Object? rewardRedeemedPoints = freezed,Object? billingReconciliation = freezed,}) {
  return _then(_Report(
auctionConversion: freezed == auctionConversion ? _self.auctionConversion : auctionConversion // ignore: cast_nullable_to_non_nullable
as AuctionConversion?,acceptedValuePaise: freezed == acceptedValuePaise ? _self.acceptedValuePaise : acceptedValuePaise // ignore: cast_nullable_to_non_nullable
as int?,paidValuePaise: freezed == paidValuePaise ? _self.paidValuePaise : paidValuePaise // ignore: cast_nullable_to_non_nullable
as int?,pickupCount: freezed == pickupCount ? _self.pickupCount : pickupCount // ignore: cast_nullable_to_non_nullable
as int?,walletMovementsPaise: freezed == walletMovementsPaise ? _self.walletMovementsPaise : walletMovementsPaise // ignore: cast_nullable_to_non_nullable
as int?,rewardIssuedPoints: freezed == rewardIssuedPoints ? _self.rewardIssuedPoints : rewardIssuedPoints // ignore: cast_nullable_to_non_nullable
as int?,rewardRedeemedPoints: freezed == rewardRedeemedPoints ? _self.rewardRedeemedPoints : rewardRedeemedPoints // ignore: cast_nullable_to_non_nullable
as int?,billingReconciliation: freezed == billingReconciliation ? _self.billingReconciliation : billingReconciliation // ignore: cast_nullable_to_non_nullable
as BillingReconciliation?,
  ));
}

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionConversionCopyWith<$Res>? get auctionConversion {
    if (_self.auctionConversion == null) {
    return null;
  }

  return $AuctionConversionCopyWith<$Res>(_self.auctionConversion!, (value) {
    return _then(_self.copyWith(auctionConversion: value));
  });
}/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillingReconciliationCopyWith<$Res>? get billingReconciliation {
    if (_self.billingReconciliation == null) {
    return null;
  }

  return $BillingReconciliationCopyWith<$Res>(_self.billingReconciliation!, (value) {
    return _then(_self.copyWith(billingReconciliation: value));
  });
}
}

// dart format on
