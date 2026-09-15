// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_settings_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuctionSettingsResponse {

 bool get success; AuctionSettings get data;
/// Create a copy of AuctionSettingsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionSettingsResponseCopyWith<AuctionSettingsResponse> get copyWith => _$AuctionSettingsResponseCopyWithImpl<AuctionSettingsResponse>(this as AuctionSettingsResponse, _$identity);

  /// Serializes this AuctionSettingsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionSettingsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'AuctionSettingsResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $AuctionSettingsResponseCopyWith<$Res>  {
  factory $AuctionSettingsResponseCopyWith(AuctionSettingsResponse value, $Res Function(AuctionSettingsResponse) _then) = _$AuctionSettingsResponseCopyWithImpl;
@useResult
$Res call({
 bool success, AuctionSettings data
});


$AuctionSettingsCopyWith<$Res> get data;

}
/// @nodoc
class _$AuctionSettingsResponseCopyWithImpl<$Res>
    implements $AuctionSettingsResponseCopyWith<$Res> {
  _$AuctionSettingsResponseCopyWithImpl(this._self, this._then);

  final AuctionSettingsResponse _self;
  final $Res Function(AuctionSettingsResponse) _then;

/// Create a copy of AuctionSettingsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AuctionSettings,
  ));
}
/// Create a copy of AuctionSettingsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionSettingsCopyWith<$Res> get data {
  
  return $AuctionSettingsCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuctionSettingsResponse].
extension AuctionSettingsResponsePatterns on AuctionSettingsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionSettingsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionSettingsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionSettingsResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuctionSettingsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionSettingsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionSettingsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  AuctionSettings data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionSettingsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  AuctionSettings data)  $default,) {final _that = this;
switch (_that) {
case _AuctionSettingsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  AuctionSettings data)?  $default,) {final _that = this;
switch (_that) {
case _AuctionSettingsResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionSettingsResponse implements AuctionSettingsResponse {
  const _AuctionSettingsResponse({required this.success, required this.data});
  factory _AuctionSettingsResponse.fromJson(Map<String, dynamic> json) => _$AuctionSettingsResponseFromJson(json);

@override final  bool success;
@override final  AuctionSettings data;

/// Create a copy of AuctionSettingsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionSettingsResponseCopyWith<_AuctionSettingsResponse> get copyWith => __$AuctionSettingsResponseCopyWithImpl<_AuctionSettingsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionSettingsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionSettingsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'AuctionSettingsResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AuctionSettingsResponseCopyWith<$Res> implements $AuctionSettingsResponseCopyWith<$Res> {
  factory _$AuctionSettingsResponseCopyWith(_AuctionSettingsResponse value, $Res Function(_AuctionSettingsResponse) _then) = __$AuctionSettingsResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, AuctionSettings data
});


@override $AuctionSettingsCopyWith<$Res> get data;

}
/// @nodoc
class __$AuctionSettingsResponseCopyWithImpl<$Res>
    implements _$AuctionSettingsResponseCopyWith<$Res> {
  __$AuctionSettingsResponseCopyWithImpl(this._self, this._then);

  final _AuctionSettingsResponse _self;
  final $Res Function(_AuctionSettingsResponse) _then;

/// Create a copy of AuctionSettingsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_AuctionSettingsResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AuctionSettings,
  ));
}

/// Create a copy of AuctionSettingsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionSettingsCopyWith<$Res> get data {
  
  return $AuctionSettingsCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
