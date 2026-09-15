// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_recharge_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletRechargeResponse {

 bool get success; WalletRecharge get data;
/// Create a copy of WalletRechargeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletRechargeResponseCopyWith<WalletRechargeResponse> get copyWith => _$WalletRechargeResponseCopyWithImpl<WalletRechargeResponse>(this as WalletRechargeResponse, _$identity);

  /// Serializes this WalletRechargeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletRechargeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'WalletRechargeResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $WalletRechargeResponseCopyWith<$Res>  {
  factory $WalletRechargeResponseCopyWith(WalletRechargeResponse value, $Res Function(WalletRechargeResponse) _then) = _$WalletRechargeResponseCopyWithImpl;
@useResult
$Res call({
 bool success, WalletRecharge data
});


$WalletRechargeCopyWith<$Res> get data;

}
/// @nodoc
class _$WalletRechargeResponseCopyWithImpl<$Res>
    implements $WalletRechargeResponseCopyWith<$Res> {
  _$WalletRechargeResponseCopyWithImpl(this._self, this._then);

  final WalletRechargeResponse _self;
  final $Res Function(WalletRechargeResponse) _then;

/// Create a copy of WalletRechargeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WalletRecharge,
  ));
}
/// Create a copy of WalletRechargeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletRechargeCopyWith<$Res> get data {
  
  return $WalletRechargeCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletRechargeResponse].
extension WalletRechargeResponsePatterns on WalletRechargeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletRechargeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletRechargeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletRechargeResponse value)  $default,){
final _that = this;
switch (_that) {
case _WalletRechargeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletRechargeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _WalletRechargeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  WalletRecharge data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletRechargeResponse() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  WalletRecharge data)  $default,) {final _that = this;
switch (_that) {
case _WalletRechargeResponse():
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  WalletRecharge data)?  $default,) {final _that = this;
switch (_that) {
case _WalletRechargeResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletRechargeResponse implements WalletRechargeResponse {
  const _WalletRechargeResponse({required this.success, required this.data});
  factory _WalletRechargeResponse.fromJson(Map<String, dynamic> json) => _$WalletRechargeResponseFromJson(json);

@override final  bool success;
@override final  WalletRecharge data;

/// Create a copy of WalletRechargeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletRechargeResponseCopyWith<_WalletRechargeResponse> get copyWith => __$WalletRechargeResponseCopyWithImpl<_WalletRechargeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletRechargeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletRechargeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'WalletRechargeResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$WalletRechargeResponseCopyWith<$Res> implements $WalletRechargeResponseCopyWith<$Res> {
  factory _$WalletRechargeResponseCopyWith(_WalletRechargeResponse value, $Res Function(_WalletRechargeResponse) _then) = __$WalletRechargeResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, WalletRecharge data
});


@override $WalletRechargeCopyWith<$Res> get data;

}
/// @nodoc
class __$WalletRechargeResponseCopyWithImpl<$Res>
    implements _$WalletRechargeResponseCopyWith<$Res> {
  __$WalletRechargeResponseCopyWithImpl(this._self, this._then);

  final _WalletRechargeResponse _self;
  final $Res Function(_WalletRechargeResponse) _then;

/// Create a copy of WalletRechargeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_WalletRechargeResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WalletRecharge,
  ));
}

/// Create a copy of WalletRechargeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletRechargeCopyWith<$Res> get data {
  
  return $WalletRechargeCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
