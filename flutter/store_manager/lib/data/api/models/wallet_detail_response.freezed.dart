// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletDetailResponse {

 bool get success; WalletDetail get data;
/// Create a copy of WalletDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletDetailResponseCopyWith<WalletDetailResponse> get copyWith => _$WalletDetailResponseCopyWithImpl<WalletDetailResponse>(this as WalletDetailResponse, _$identity);

  /// Serializes this WalletDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'WalletDetailResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $WalletDetailResponseCopyWith<$Res>  {
  factory $WalletDetailResponseCopyWith(WalletDetailResponse value, $Res Function(WalletDetailResponse) _then) = _$WalletDetailResponseCopyWithImpl;
@useResult
$Res call({
 bool success, WalletDetail data
});


$WalletDetailCopyWith<$Res> get data;

}
/// @nodoc
class _$WalletDetailResponseCopyWithImpl<$Res>
    implements $WalletDetailResponseCopyWith<$Res> {
  _$WalletDetailResponseCopyWithImpl(this._self, this._then);

  final WalletDetailResponse _self;
  final $Res Function(WalletDetailResponse) _then;

/// Create a copy of WalletDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WalletDetail,
  ));
}
/// Create a copy of WalletDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletDetailCopyWith<$Res> get data {
  
  return $WalletDetailCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletDetailResponse].
extension WalletDetailResponsePatterns on WalletDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _WalletDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _WalletDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  WalletDetail data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletDetailResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  WalletDetail data)  $default,) {final _that = this;
switch (_that) {
case _WalletDetailResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  WalletDetail data)?  $default,) {final _that = this;
switch (_that) {
case _WalletDetailResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletDetailResponse implements WalletDetailResponse {
  const _WalletDetailResponse({required this.success, required this.data});
  factory _WalletDetailResponse.fromJson(Map<String, dynamic> json) => _$WalletDetailResponseFromJson(json);

@override final  bool success;
@override final  WalletDetail data;

/// Create a copy of WalletDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletDetailResponseCopyWith<_WalletDetailResponse> get copyWith => __$WalletDetailResponseCopyWithImpl<_WalletDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'WalletDetailResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$WalletDetailResponseCopyWith<$Res> implements $WalletDetailResponseCopyWith<$Res> {
  factory _$WalletDetailResponseCopyWith(_WalletDetailResponse value, $Res Function(_WalletDetailResponse) _then) = __$WalletDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, WalletDetail data
});


@override $WalletDetailCopyWith<$Res> get data;

}
/// @nodoc
class __$WalletDetailResponseCopyWithImpl<$Res>
    implements _$WalletDetailResponseCopyWith<$Res> {
  __$WalletDetailResponseCopyWithImpl(this._self, this._then);

  final _WalletDetailResponse _self;
  final $Res Function(_WalletDetailResponse) _then;

/// Create a copy of WalletDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_WalletDetailResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WalletDetail,
  ));
}

/// Create a copy of WalletDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletDetailCopyWith<$Res> get data {
  
  return $WalletDetailCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
