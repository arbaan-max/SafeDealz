// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendorListResponse {

 bool get success; List<VendorAccount> get data;
/// Create a copy of VendorListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorListResponseCopyWith<VendorListResponse> get copyWith => _$VendorListResponseCopyWithImpl<VendorListResponse>(this as VendorListResponse, _$identity);

  /// Serializes this VendorListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'VendorListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $VendorListResponseCopyWith<$Res>  {
  factory $VendorListResponseCopyWith(VendorListResponse value, $Res Function(VendorListResponse) _then) = _$VendorListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<VendorAccount> data
});




}
/// @nodoc
class _$VendorListResponseCopyWithImpl<$Res>
    implements $VendorListResponseCopyWith<$Res> {
  _$VendorListResponseCopyWithImpl(this._self, this._then);

  final VendorListResponse _self;
  final $Res Function(VendorListResponse) _then;

/// Create a copy of VendorListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<VendorAccount>,
  ));
}

}


/// Adds pattern-matching-related methods to [VendorListResponse].
extension VendorListResponsePatterns on VendorListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorListResponse value)  $default,){
final _that = this;
switch (_that) {
case _VendorListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _VendorListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<VendorAccount> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<VendorAccount> data)  $default,) {final _that = this;
switch (_that) {
case _VendorListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<VendorAccount> data)?  $default,) {final _that = this;
switch (_that) {
case _VendorListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorListResponse implements VendorListResponse {
  const _VendorListResponse({required this.success, required final  List<VendorAccount> data}): _data = data;
  factory _VendorListResponse.fromJson(Map<String, dynamic> json) => _$VendorListResponseFromJson(json);

@override final  bool success;
 final  List<VendorAccount> _data;
@override List<VendorAccount> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of VendorListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorListResponseCopyWith<_VendorListResponse> get copyWith => __$VendorListResponseCopyWithImpl<_VendorListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'VendorListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$VendorListResponseCopyWith<$Res> implements $VendorListResponseCopyWith<$Res> {
  factory _$VendorListResponseCopyWith(_VendorListResponse value, $Res Function(_VendorListResponse) _then) = __$VendorListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<VendorAccount> data
});




}
/// @nodoc
class __$VendorListResponseCopyWithImpl<$Res>
    implements _$VendorListResponseCopyWith<$Res> {
  __$VendorListResponseCopyWithImpl(this._self, this._then);

  final _VendorListResponse _self;
  final $Res Function(_VendorListResponse) _then;

/// Create a copy of VendorListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_VendorListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<VendorAccount>,
  ));
}


}

// dart format on
