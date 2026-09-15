// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_verify_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DealVerifyWrite {

 String get customerName; String get customerPhone; String get otp; bool get idCaptured; bool get portraitCaptured; PurchasedDevice get purchasedDevice;
/// Create a copy of DealVerifyWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DealVerifyWriteCopyWith<DealVerifyWrite> get copyWith => _$DealVerifyWriteCopyWithImpl<DealVerifyWrite>(this as DealVerifyWrite, _$identity);

  /// Serializes this DealVerifyWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DealVerifyWrite&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.idCaptured, idCaptured) || other.idCaptured == idCaptured)&&(identical(other.portraitCaptured, portraitCaptured) || other.portraitCaptured == portraitCaptured)&&(identical(other.purchasedDevice, purchasedDevice) || other.purchasedDevice == purchasedDevice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerName,customerPhone,otp,idCaptured,portraitCaptured,purchasedDevice);

@override
String toString() {
  return 'DealVerifyWrite(customerName: $customerName, customerPhone: $customerPhone, otp: $otp, idCaptured: $idCaptured, portraitCaptured: $portraitCaptured, purchasedDevice: $purchasedDevice)';
}


}

/// @nodoc
abstract mixin class $DealVerifyWriteCopyWith<$Res>  {
  factory $DealVerifyWriteCopyWith(DealVerifyWrite value, $Res Function(DealVerifyWrite) _then) = _$DealVerifyWriteCopyWithImpl;
@useResult
$Res call({
 String customerName, String customerPhone, String otp, bool idCaptured, bool portraitCaptured, PurchasedDevice purchasedDevice
});


$PurchasedDeviceCopyWith<$Res> get purchasedDevice;

}
/// @nodoc
class _$DealVerifyWriteCopyWithImpl<$Res>
    implements $DealVerifyWriteCopyWith<$Res> {
  _$DealVerifyWriteCopyWithImpl(this._self, this._then);

  final DealVerifyWrite _self;
  final $Res Function(DealVerifyWrite) _then;

/// Create a copy of DealVerifyWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerName = null,Object? customerPhone = null,Object? otp = null,Object? idCaptured = null,Object? portraitCaptured = null,Object? purchasedDevice = null,}) {
  return _then(_self.copyWith(
customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,idCaptured: null == idCaptured ? _self.idCaptured : idCaptured // ignore: cast_nullable_to_non_nullable
as bool,portraitCaptured: null == portraitCaptured ? _self.portraitCaptured : portraitCaptured // ignore: cast_nullable_to_non_nullable
as bool,purchasedDevice: null == purchasedDevice ? _self.purchasedDevice : purchasedDevice // ignore: cast_nullable_to_non_nullable
as PurchasedDevice,
  ));
}
/// Create a copy of DealVerifyWrite
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PurchasedDeviceCopyWith<$Res> get purchasedDevice {
  
  return $PurchasedDeviceCopyWith<$Res>(_self.purchasedDevice, (value) {
    return _then(_self.copyWith(purchasedDevice: value));
  });
}
}


/// Adds pattern-matching-related methods to [DealVerifyWrite].
extension DealVerifyWritePatterns on DealVerifyWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DealVerifyWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DealVerifyWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DealVerifyWrite value)  $default,){
final _that = this;
switch (_that) {
case _DealVerifyWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DealVerifyWrite value)?  $default,){
final _that = this;
switch (_that) {
case _DealVerifyWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerName,  String customerPhone,  String otp,  bool idCaptured,  bool portraitCaptured,  PurchasedDevice purchasedDevice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DealVerifyWrite() when $default != null:
return $default(_that.customerName,_that.customerPhone,_that.otp,_that.idCaptured,_that.portraitCaptured,_that.purchasedDevice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerName,  String customerPhone,  String otp,  bool idCaptured,  bool portraitCaptured,  PurchasedDevice purchasedDevice)  $default,) {final _that = this;
switch (_that) {
case _DealVerifyWrite():
return $default(_that.customerName,_that.customerPhone,_that.otp,_that.idCaptured,_that.portraitCaptured,_that.purchasedDevice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerName,  String customerPhone,  String otp,  bool idCaptured,  bool portraitCaptured,  PurchasedDevice purchasedDevice)?  $default,) {final _that = this;
switch (_that) {
case _DealVerifyWrite() when $default != null:
return $default(_that.customerName,_that.customerPhone,_that.otp,_that.idCaptured,_that.portraitCaptured,_that.purchasedDevice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DealVerifyWrite implements DealVerifyWrite {
  const _DealVerifyWrite({required this.customerName, required this.customerPhone, required this.otp, required this.idCaptured, required this.portraitCaptured, required this.purchasedDevice});
  factory _DealVerifyWrite.fromJson(Map<String, dynamic> json) => _$DealVerifyWriteFromJson(json);

@override final  String customerName;
@override final  String customerPhone;
@override final  String otp;
@override final  bool idCaptured;
@override final  bool portraitCaptured;
@override final  PurchasedDevice purchasedDevice;

/// Create a copy of DealVerifyWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DealVerifyWriteCopyWith<_DealVerifyWrite> get copyWith => __$DealVerifyWriteCopyWithImpl<_DealVerifyWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DealVerifyWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DealVerifyWrite&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.idCaptured, idCaptured) || other.idCaptured == idCaptured)&&(identical(other.portraitCaptured, portraitCaptured) || other.portraitCaptured == portraitCaptured)&&(identical(other.purchasedDevice, purchasedDevice) || other.purchasedDevice == purchasedDevice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerName,customerPhone,otp,idCaptured,portraitCaptured,purchasedDevice);

@override
String toString() {
  return 'DealVerifyWrite(customerName: $customerName, customerPhone: $customerPhone, otp: $otp, idCaptured: $idCaptured, portraitCaptured: $portraitCaptured, purchasedDevice: $purchasedDevice)';
}


}

/// @nodoc
abstract mixin class _$DealVerifyWriteCopyWith<$Res> implements $DealVerifyWriteCopyWith<$Res> {
  factory _$DealVerifyWriteCopyWith(_DealVerifyWrite value, $Res Function(_DealVerifyWrite) _then) = __$DealVerifyWriteCopyWithImpl;
@override @useResult
$Res call({
 String customerName, String customerPhone, String otp, bool idCaptured, bool portraitCaptured, PurchasedDevice purchasedDevice
});


@override $PurchasedDeviceCopyWith<$Res> get purchasedDevice;

}
/// @nodoc
class __$DealVerifyWriteCopyWithImpl<$Res>
    implements _$DealVerifyWriteCopyWith<$Res> {
  __$DealVerifyWriteCopyWithImpl(this._self, this._then);

  final _DealVerifyWrite _self;
  final $Res Function(_DealVerifyWrite) _then;

/// Create a copy of DealVerifyWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerName = null,Object? customerPhone = null,Object? otp = null,Object? idCaptured = null,Object? portraitCaptured = null,Object? purchasedDevice = null,}) {
  return _then(_DealVerifyWrite(
customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,idCaptured: null == idCaptured ? _self.idCaptured : idCaptured // ignore: cast_nullable_to_non_nullable
as bool,portraitCaptured: null == portraitCaptured ? _self.portraitCaptured : portraitCaptured // ignore: cast_nullable_to_non_nullable
as bool,purchasedDevice: null == purchasedDevice ? _self.purchasedDevice : purchasedDevice // ignore: cast_nullable_to_non_nullable
as PurchasedDevice,
  ));
}

/// Create a copy of DealVerifyWrite
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PurchasedDeviceCopyWith<$Res> get purchasedDevice {
  
  return $PurchasedDeviceCopyWith<$Res>(_self.purchasedDevice, (value) {
    return _then(_self.copyWith(purchasedDevice: value));
  });
}
}

// dart format on
