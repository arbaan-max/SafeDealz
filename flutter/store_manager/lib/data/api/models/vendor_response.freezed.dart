// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendorResponse {

 bool get success; VendorAccount get data;
/// Create a copy of VendorResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorResponseCopyWith<VendorResponse> get copyWith => _$VendorResponseCopyWithImpl<VendorResponse>(this as VendorResponse, _$identity);

  /// Serializes this VendorResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'VendorResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $VendorResponseCopyWith<$Res>  {
  factory $VendorResponseCopyWith(VendorResponse value, $Res Function(VendorResponse) _then) = _$VendorResponseCopyWithImpl;
@useResult
$Res call({
 bool success, VendorAccount data
});


$VendorAccountCopyWith<$Res> get data;

}
/// @nodoc
class _$VendorResponseCopyWithImpl<$Res>
    implements $VendorResponseCopyWith<$Res> {
  _$VendorResponseCopyWithImpl(this._self, this._then);

  final VendorResponse _self;
  final $Res Function(VendorResponse) _then;

/// Create a copy of VendorResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VendorAccount,
  ));
}
/// Create a copy of VendorResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VendorAccountCopyWith<$Res> get data {
  
  return $VendorAccountCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [VendorResponse].
extension VendorResponsePatterns on VendorResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorResponse value)  $default,){
final _that = this;
switch (_that) {
case _VendorResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorResponse value)?  $default,){
final _that = this;
switch (_that) {
case _VendorResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  VendorAccount data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  VendorAccount data)  $default,) {final _that = this;
switch (_that) {
case _VendorResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  VendorAccount data)?  $default,) {final _that = this;
switch (_that) {
case _VendorResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorResponse implements VendorResponse {
  const _VendorResponse({required this.success, required this.data});
  factory _VendorResponse.fromJson(Map<String, dynamic> json) => _$VendorResponseFromJson(json);

@override final  bool success;
@override final  VendorAccount data;

/// Create a copy of VendorResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorResponseCopyWith<_VendorResponse> get copyWith => __$VendorResponseCopyWithImpl<_VendorResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'VendorResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$VendorResponseCopyWith<$Res> implements $VendorResponseCopyWith<$Res> {
  factory _$VendorResponseCopyWith(_VendorResponse value, $Res Function(_VendorResponse) _then) = __$VendorResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, VendorAccount data
});


@override $VendorAccountCopyWith<$Res> get data;

}
/// @nodoc
class __$VendorResponseCopyWithImpl<$Res>
    implements _$VendorResponseCopyWith<$Res> {
  __$VendorResponseCopyWithImpl(this._self, this._then);

  final _VendorResponse _self;
  final $Res Function(_VendorResponse) _then;

/// Create a copy of VendorResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_VendorResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VendorAccount,
  ));
}

/// Create a copy of VendorResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VendorAccountCopyWith<$Res> get data {
  
  return $VendorAccountCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
