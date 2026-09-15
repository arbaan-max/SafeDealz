// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Deal {

 String get id; String get auctionRoundId; String get deviceId; int get amountPaise; DealStatus get status; String? get branchId; String? get vendorAccountId; String? get bidId; int? get feePaise; int? get totalPaise; PaymentInstruction? get paymentInstruction; DateTime? get pickedUpAt; dynamic get branch; String? get customerName; String? get customerPhone; bool? get otpVerified; bool? get idCaptured; bool? get portraitCaptured; PurchasedDevice? get purchasedDevice;
/// Create a copy of Deal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DealCopyWith<Deal> get copyWith => _$DealCopyWithImpl<Deal>(this as Deal, _$identity);

  /// Serializes this Deal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Deal&&(identical(other.id, id) || other.id == id)&&(identical(other.auctionRoundId, auctionRoundId) || other.auctionRoundId == auctionRoundId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.status, status) || other.status == status)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.vendorAccountId, vendorAccountId) || other.vendorAccountId == vendorAccountId)&&(identical(other.bidId, bidId) || other.bidId == bidId)&&(identical(other.feePaise, feePaise) || other.feePaise == feePaise)&&(identical(other.totalPaise, totalPaise) || other.totalPaise == totalPaise)&&(identical(other.paymentInstruction, paymentInstruction) || other.paymentInstruction == paymentInstruction)&&(identical(other.pickedUpAt, pickedUpAt) || other.pickedUpAt == pickedUpAt)&&const DeepCollectionEquality().equals(other.branch, branch)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.otpVerified, otpVerified) || other.otpVerified == otpVerified)&&(identical(other.idCaptured, idCaptured) || other.idCaptured == idCaptured)&&(identical(other.portraitCaptured, portraitCaptured) || other.portraitCaptured == portraitCaptured)&&(identical(other.purchasedDevice, purchasedDevice) || other.purchasedDevice == purchasedDevice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,auctionRoundId,deviceId,amountPaise,status,branchId,vendorAccountId,bidId,feePaise,totalPaise,paymentInstruction,pickedUpAt,const DeepCollectionEquality().hash(branch),customerName,customerPhone,otpVerified,idCaptured,portraitCaptured,purchasedDevice]);

@override
String toString() {
  return 'Deal(id: $id, auctionRoundId: $auctionRoundId, deviceId: $deviceId, amountPaise: $amountPaise, status: $status, branchId: $branchId, vendorAccountId: $vendorAccountId, bidId: $bidId, feePaise: $feePaise, totalPaise: $totalPaise, paymentInstruction: $paymentInstruction, pickedUpAt: $pickedUpAt, branch: $branch, customerName: $customerName, customerPhone: $customerPhone, otpVerified: $otpVerified, idCaptured: $idCaptured, portraitCaptured: $portraitCaptured, purchasedDevice: $purchasedDevice)';
}


}

/// @nodoc
abstract mixin class $DealCopyWith<$Res>  {
  factory $DealCopyWith(Deal value, $Res Function(Deal) _then) = _$DealCopyWithImpl;
@useResult
$Res call({
 String id, String auctionRoundId, String deviceId, int amountPaise, DealStatus status, String? branchId, String? vendorAccountId, String? bidId, int? feePaise, int? totalPaise, PaymentInstruction? paymentInstruction, DateTime? pickedUpAt, dynamic branch, String? customerName, String? customerPhone, bool? otpVerified, bool? idCaptured, bool? portraitCaptured, PurchasedDevice? purchasedDevice
});


$PaymentInstructionCopyWith<$Res>? get paymentInstruction;$PurchasedDeviceCopyWith<$Res>? get purchasedDevice;

}
/// @nodoc
class _$DealCopyWithImpl<$Res>
    implements $DealCopyWith<$Res> {
  _$DealCopyWithImpl(this._self, this._then);

  final Deal _self;
  final $Res Function(Deal) _then;

/// Create a copy of Deal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? auctionRoundId = null,Object? deviceId = null,Object? amountPaise = null,Object? status = null,Object? branchId = freezed,Object? vendorAccountId = freezed,Object? bidId = freezed,Object? feePaise = freezed,Object? totalPaise = freezed,Object? paymentInstruction = freezed,Object? pickedUpAt = freezed,Object? branch = freezed,Object? customerName = freezed,Object? customerPhone = freezed,Object? otpVerified = freezed,Object? idCaptured = freezed,Object? portraitCaptured = freezed,Object? purchasedDevice = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,auctionRoundId: null == auctionRoundId ? _self.auctionRoundId : auctionRoundId // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DealStatus,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,vendorAccountId: freezed == vendorAccountId ? _self.vendorAccountId : vendorAccountId // ignore: cast_nullable_to_non_nullable
as String?,bidId: freezed == bidId ? _self.bidId : bidId // ignore: cast_nullable_to_non_nullable
as String?,feePaise: freezed == feePaise ? _self.feePaise : feePaise // ignore: cast_nullable_to_non_nullable
as int?,totalPaise: freezed == totalPaise ? _self.totalPaise : totalPaise // ignore: cast_nullable_to_non_nullable
as int?,paymentInstruction: freezed == paymentInstruction ? _self.paymentInstruction : paymentInstruction // ignore: cast_nullable_to_non_nullable
as PaymentInstruction?,pickedUpAt: freezed == pickedUpAt ? _self.pickedUpAt : pickedUpAt // ignore: cast_nullable_to_non_nullable
as DateTime?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as dynamic,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,otpVerified: freezed == otpVerified ? _self.otpVerified : otpVerified // ignore: cast_nullable_to_non_nullable
as bool?,idCaptured: freezed == idCaptured ? _self.idCaptured : idCaptured // ignore: cast_nullable_to_non_nullable
as bool?,portraitCaptured: freezed == portraitCaptured ? _self.portraitCaptured : portraitCaptured // ignore: cast_nullable_to_non_nullable
as bool?,purchasedDevice: freezed == purchasedDevice ? _self.purchasedDevice : purchasedDevice // ignore: cast_nullable_to_non_nullable
as PurchasedDevice?,
  ));
}
/// Create a copy of Deal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentInstructionCopyWith<$Res>? get paymentInstruction {
    if (_self.paymentInstruction == null) {
    return null;
  }

  return $PaymentInstructionCopyWith<$Res>(_self.paymentInstruction!, (value) {
    return _then(_self.copyWith(paymentInstruction: value));
  });
}/// Create a copy of Deal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PurchasedDeviceCopyWith<$Res>? get purchasedDevice {
    if (_self.purchasedDevice == null) {
    return null;
  }

  return $PurchasedDeviceCopyWith<$Res>(_self.purchasedDevice!, (value) {
    return _then(_self.copyWith(purchasedDevice: value));
  });
}
}


/// Adds pattern-matching-related methods to [Deal].
extension DealPatterns on Deal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Deal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Deal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Deal value)  $default,){
final _that = this;
switch (_that) {
case _Deal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Deal value)?  $default,){
final _that = this;
switch (_that) {
case _Deal() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String auctionRoundId,  String deviceId,  int amountPaise,  DealStatus status,  String? branchId,  String? vendorAccountId,  String? bidId,  int? feePaise,  int? totalPaise,  PaymentInstruction? paymentInstruction,  DateTime? pickedUpAt,  dynamic branch,  String? customerName,  String? customerPhone,  bool? otpVerified,  bool? idCaptured,  bool? portraitCaptured,  PurchasedDevice? purchasedDevice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Deal() when $default != null:
return $default(_that.id,_that.auctionRoundId,_that.deviceId,_that.amountPaise,_that.status,_that.branchId,_that.vendorAccountId,_that.bidId,_that.feePaise,_that.totalPaise,_that.paymentInstruction,_that.pickedUpAt,_that.branch,_that.customerName,_that.customerPhone,_that.otpVerified,_that.idCaptured,_that.portraitCaptured,_that.purchasedDevice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String auctionRoundId,  String deviceId,  int amountPaise,  DealStatus status,  String? branchId,  String? vendorAccountId,  String? bidId,  int? feePaise,  int? totalPaise,  PaymentInstruction? paymentInstruction,  DateTime? pickedUpAt,  dynamic branch,  String? customerName,  String? customerPhone,  bool? otpVerified,  bool? idCaptured,  bool? portraitCaptured,  PurchasedDevice? purchasedDevice)  $default,) {final _that = this;
switch (_that) {
case _Deal():
return $default(_that.id,_that.auctionRoundId,_that.deviceId,_that.amountPaise,_that.status,_that.branchId,_that.vendorAccountId,_that.bidId,_that.feePaise,_that.totalPaise,_that.paymentInstruction,_that.pickedUpAt,_that.branch,_that.customerName,_that.customerPhone,_that.otpVerified,_that.idCaptured,_that.portraitCaptured,_that.purchasedDevice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String auctionRoundId,  String deviceId,  int amountPaise,  DealStatus status,  String? branchId,  String? vendorAccountId,  String? bidId,  int? feePaise,  int? totalPaise,  PaymentInstruction? paymentInstruction,  DateTime? pickedUpAt,  dynamic branch,  String? customerName,  String? customerPhone,  bool? otpVerified,  bool? idCaptured,  bool? portraitCaptured,  PurchasedDevice? purchasedDevice)?  $default,) {final _that = this;
switch (_that) {
case _Deal() when $default != null:
return $default(_that.id,_that.auctionRoundId,_that.deviceId,_that.amountPaise,_that.status,_that.branchId,_that.vendorAccountId,_that.bidId,_that.feePaise,_that.totalPaise,_that.paymentInstruction,_that.pickedUpAt,_that.branch,_that.customerName,_that.customerPhone,_that.otpVerified,_that.idCaptured,_that.portraitCaptured,_that.purchasedDevice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Deal implements Deal {
  const _Deal({required this.id, required this.auctionRoundId, required this.deviceId, required this.amountPaise, required this.status, this.branchId, this.vendorAccountId, this.bidId, this.feePaise, this.totalPaise, this.paymentInstruction, this.pickedUpAt, this.branch, this.customerName, this.customerPhone, this.otpVerified, this.idCaptured, this.portraitCaptured, this.purchasedDevice});
  factory _Deal.fromJson(Map<String, dynamic> json) => _$DealFromJson(json);

@override final  String id;
@override final  String auctionRoundId;
@override final  String deviceId;
@override final  int amountPaise;
@override final  DealStatus status;
@override final  String? branchId;
@override final  String? vendorAccountId;
@override final  String? bidId;
@override final  int? feePaise;
@override final  int? totalPaise;
@override final  PaymentInstruction? paymentInstruction;
@override final  DateTime? pickedUpAt;
@override final  dynamic branch;
@override final  String? customerName;
@override final  String? customerPhone;
@override final  bool? otpVerified;
@override final  bool? idCaptured;
@override final  bool? portraitCaptured;
@override final  PurchasedDevice? purchasedDevice;

/// Create a copy of Deal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DealCopyWith<_Deal> get copyWith => __$DealCopyWithImpl<_Deal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DealToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Deal&&(identical(other.id, id) || other.id == id)&&(identical(other.auctionRoundId, auctionRoundId) || other.auctionRoundId == auctionRoundId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.status, status) || other.status == status)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.vendorAccountId, vendorAccountId) || other.vendorAccountId == vendorAccountId)&&(identical(other.bidId, bidId) || other.bidId == bidId)&&(identical(other.feePaise, feePaise) || other.feePaise == feePaise)&&(identical(other.totalPaise, totalPaise) || other.totalPaise == totalPaise)&&(identical(other.paymentInstruction, paymentInstruction) || other.paymentInstruction == paymentInstruction)&&(identical(other.pickedUpAt, pickedUpAt) || other.pickedUpAt == pickedUpAt)&&const DeepCollectionEquality().equals(other.branch, branch)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.otpVerified, otpVerified) || other.otpVerified == otpVerified)&&(identical(other.idCaptured, idCaptured) || other.idCaptured == idCaptured)&&(identical(other.portraitCaptured, portraitCaptured) || other.portraitCaptured == portraitCaptured)&&(identical(other.purchasedDevice, purchasedDevice) || other.purchasedDevice == purchasedDevice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,auctionRoundId,deviceId,amountPaise,status,branchId,vendorAccountId,bidId,feePaise,totalPaise,paymentInstruction,pickedUpAt,const DeepCollectionEquality().hash(branch),customerName,customerPhone,otpVerified,idCaptured,portraitCaptured,purchasedDevice]);

@override
String toString() {
  return 'Deal(id: $id, auctionRoundId: $auctionRoundId, deviceId: $deviceId, amountPaise: $amountPaise, status: $status, branchId: $branchId, vendorAccountId: $vendorAccountId, bidId: $bidId, feePaise: $feePaise, totalPaise: $totalPaise, paymentInstruction: $paymentInstruction, pickedUpAt: $pickedUpAt, branch: $branch, customerName: $customerName, customerPhone: $customerPhone, otpVerified: $otpVerified, idCaptured: $idCaptured, portraitCaptured: $portraitCaptured, purchasedDevice: $purchasedDevice)';
}


}

/// @nodoc
abstract mixin class _$DealCopyWith<$Res> implements $DealCopyWith<$Res> {
  factory _$DealCopyWith(_Deal value, $Res Function(_Deal) _then) = __$DealCopyWithImpl;
@override @useResult
$Res call({
 String id, String auctionRoundId, String deviceId, int amountPaise, DealStatus status, String? branchId, String? vendorAccountId, String? bidId, int? feePaise, int? totalPaise, PaymentInstruction? paymentInstruction, DateTime? pickedUpAt, dynamic branch, String? customerName, String? customerPhone, bool? otpVerified, bool? idCaptured, bool? portraitCaptured, PurchasedDevice? purchasedDevice
});


@override $PaymentInstructionCopyWith<$Res>? get paymentInstruction;@override $PurchasedDeviceCopyWith<$Res>? get purchasedDevice;

}
/// @nodoc
class __$DealCopyWithImpl<$Res>
    implements _$DealCopyWith<$Res> {
  __$DealCopyWithImpl(this._self, this._then);

  final _Deal _self;
  final $Res Function(_Deal) _then;

/// Create a copy of Deal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? auctionRoundId = null,Object? deviceId = null,Object? amountPaise = null,Object? status = null,Object? branchId = freezed,Object? vendorAccountId = freezed,Object? bidId = freezed,Object? feePaise = freezed,Object? totalPaise = freezed,Object? paymentInstruction = freezed,Object? pickedUpAt = freezed,Object? branch = freezed,Object? customerName = freezed,Object? customerPhone = freezed,Object? otpVerified = freezed,Object? idCaptured = freezed,Object? portraitCaptured = freezed,Object? purchasedDevice = freezed,}) {
  return _then(_Deal(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,auctionRoundId: null == auctionRoundId ? _self.auctionRoundId : auctionRoundId // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DealStatus,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,vendorAccountId: freezed == vendorAccountId ? _self.vendorAccountId : vendorAccountId // ignore: cast_nullable_to_non_nullable
as String?,bidId: freezed == bidId ? _self.bidId : bidId // ignore: cast_nullable_to_non_nullable
as String?,feePaise: freezed == feePaise ? _self.feePaise : feePaise // ignore: cast_nullable_to_non_nullable
as int?,totalPaise: freezed == totalPaise ? _self.totalPaise : totalPaise // ignore: cast_nullable_to_non_nullable
as int?,paymentInstruction: freezed == paymentInstruction ? _self.paymentInstruction : paymentInstruction // ignore: cast_nullable_to_non_nullable
as PaymentInstruction?,pickedUpAt: freezed == pickedUpAt ? _self.pickedUpAt : pickedUpAt // ignore: cast_nullable_to_non_nullable
as DateTime?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as dynamic,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,otpVerified: freezed == otpVerified ? _self.otpVerified : otpVerified // ignore: cast_nullable_to_non_nullable
as bool?,idCaptured: freezed == idCaptured ? _self.idCaptured : idCaptured // ignore: cast_nullable_to_non_nullable
as bool?,portraitCaptured: freezed == portraitCaptured ? _self.portraitCaptured : portraitCaptured // ignore: cast_nullable_to_non_nullable
as bool?,purchasedDevice: freezed == purchasedDevice ? _self.purchasedDevice : purchasedDevice // ignore: cast_nullable_to_non_nullable
as PurchasedDevice?,
  ));
}

/// Create a copy of Deal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentInstructionCopyWith<$Res>? get paymentInstruction {
    if (_self.paymentInstruction == null) {
    return null;
  }

  return $PaymentInstructionCopyWith<$Res>(_self.paymentInstruction!, (value) {
    return _then(_self.copyWith(paymentInstruction: value));
  });
}/// Create a copy of Deal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PurchasedDeviceCopyWith<$Res>? get purchasedDevice {
    if (_self.purchasedDevice == null) {
    return null;
  }

  return $PurchasedDeviceCopyWith<$Res>(_self.purchasedDevice!, (value) {
    return _then(_self.copyWith(purchasedDevice: value));
  });
}
}

// dart format on
