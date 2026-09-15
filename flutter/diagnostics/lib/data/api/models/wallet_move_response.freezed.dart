// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_move_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletMoveResponse {

 bool get success; Data2 get data;
/// Create a copy of WalletMoveResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletMoveResponseCopyWith<WalletMoveResponse> get copyWith => _$WalletMoveResponseCopyWithImpl<WalletMoveResponse>(this as WalletMoveResponse, _$identity);

  /// Serializes this WalletMoveResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletMoveResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'WalletMoveResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $WalletMoveResponseCopyWith<$Res>  {
  factory $WalletMoveResponseCopyWith(WalletMoveResponse value, $Res Function(WalletMoveResponse) _then) = _$WalletMoveResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Data2 data
});


$Data2CopyWith<$Res> get data;

}
/// @nodoc
class _$WalletMoveResponseCopyWithImpl<$Res>
    implements $WalletMoveResponseCopyWith<$Res> {
  _$WalletMoveResponseCopyWithImpl(this._self, this._then);

  final WalletMoveResponse _self;
  final $Res Function(WalletMoveResponse) _then;

/// Create a copy of WalletMoveResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data2,
  ));
}
/// Create a copy of WalletMoveResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data2CopyWith<$Res> get data {
  
  return $Data2CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletMoveResponse].
extension WalletMoveResponsePatterns on WalletMoveResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletMoveResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletMoveResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletMoveResponse value)  $default,){
final _that = this;
switch (_that) {
case _WalletMoveResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletMoveResponse value)?  $default,){
final _that = this;
switch (_that) {
case _WalletMoveResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Data2 data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletMoveResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Data2 data)  $default,) {final _that = this;
switch (_that) {
case _WalletMoveResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Data2 data)?  $default,) {final _that = this;
switch (_that) {
case _WalletMoveResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletMoveResponse implements WalletMoveResponse {
  const _WalletMoveResponse({required this.success, required this.data});
  factory _WalletMoveResponse.fromJson(Map<String, dynamic> json) => _$WalletMoveResponseFromJson(json);

@override final  bool success;
@override final  Data2 data;

/// Create a copy of WalletMoveResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletMoveResponseCopyWith<_WalletMoveResponse> get copyWith => __$WalletMoveResponseCopyWithImpl<_WalletMoveResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletMoveResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletMoveResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'WalletMoveResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$WalletMoveResponseCopyWith<$Res> implements $WalletMoveResponseCopyWith<$Res> {
  factory _$WalletMoveResponseCopyWith(_WalletMoveResponse value, $Res Function(_WalletMoveResponse) _then) = __$WalletMoveResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Data2 data
});


@override $Data2CopyWith<$Res> get data;

}
/// @nodoc
class __$WalletMoveResponseCopyWithImpl<$Res>
    implements _$WalletMoveResponseCopyWith<$Res> {
  __$WalletMoveResponseCopyWithImpl(this._self, this._then);

  final _WalletMoveResponse _self;
  final $Res Function(_WalletMoveResponse) _then;

/// Create a copy of WalletMoveResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_WalletMoveResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data2,
  ));
}

/// Create a copy of WalletMoveResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data2CopyWith<$Res> get data {
  
  return $Data2CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
