// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceListResponse {

 bool get success; List<Device> get data;
/// Create a copy of DeviceListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceListResponseCopyWith<DeviceListResponse> get copyWith => _$DeviceListResponseCopyWithImpl<DeviceListResponse>(this as DeviceListResponse, _$identity);

  /// Serializes this DeviceListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DeviceListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $DeviceListResponseCopyWith<$Res>  {
  factory $DeviceListResponseCopyWith(DeviceListResponse value, $Res Function(DeviceListResponse) _then) = _$DeviceListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<Device> data
});




}
/// @nodoc
class _$DeviceListResponseCopyWithImpl<$Res>
    implements $DeviceListResponseCopyWith<$Res> {
  _$DeviceListResponseCopyWithImpl(this._self, this._then);

  final DeviceListResponse _self;
  final $Res Function(DeviceListResponse) _then;

/// Create a copy of DeviceListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Device>,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceListResponse].
extension DeviceListResponsePatterns on DeviceListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceListResponse value)  $default,){
final _that = this;
switch (_that) {
case _DeviceListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<Device> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<Device> data)  $default,) {final _that = this;
switch (_that) {
case _DeviceListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<Device> data)?  $default,) {final _that = this;
switch (_that) {
case _DeviceListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceListResponse implements DeviceListResponse {
  const _DeviceListResponse({required this.success, required final  List<Device> data}): _data = data;
  factory _DeviceListResponse.fromJson(Map<String, dynamic> json) => _$DeviceListResponseFromJson(json);

@override final  bool success;
 final  List<Device> _data;
@override List<Device> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of DeviceListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceListResponseCopyWith<_DeviceListResponse> get copyWith => __$DeviceListResponseCopyWithImpl<_DeviceListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'DeviceListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DeviceListResponseCopyWith<$Res> implements $DeviceListResponseCopyWith<$Res> {
  factory _$DeviceListResponseCopyWith(_DeviceListResponse value, $Res Function(_DeviceListResponse) _then) = __$DeviceListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<Device> data
});




}
/// @nodoc
class __$DeviceListResponseCopyWithImpl<$Res>
    implements _$DeviceListResponseCopyWith<$Res> {
  __$DeviceListResponseCopyWithImpl(this._self, this._then);

  final _DeviceListResponse _self;
  final $Res Function(_DeviceListResponse) _then;

/// Create a copy of DeviceListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_DeviceListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Device>,
  ));
}


}

// dart format on
