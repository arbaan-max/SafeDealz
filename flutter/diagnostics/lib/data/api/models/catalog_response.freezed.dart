// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogResponse {

 bool get success; Catalog get data;
/// Create a copy of CatalogResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogResponseCopyWith<CatalogResponse> get copyWith => _$CatalogResponseCopyWithImpl<CatalogResponse>(this as CatalogResponse, _$identity);

  /// Serializes this CatalogResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'CatalogResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $CatalogResponseCopyWith<$Res>  {
  factory $CatalogResponseCopyWith(CatalogResponse value, $Res Function(CatalogResponse) _then) = _$CatalogResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Catalog data
});


$CatalogCopyWith<$Res> get data;

}
/// @nodoc
class _$CatalogResponseCopyWithImpl<$Res>
    implements $CatalogResponseCopyWith<$Res> {
  _$CatalogResponseCopyWithImpl(this._self, this._then);

  final CatalogResponse _self;
  final $Res Function(CatalogResponse) _then;

/// Create a copy of CatalogResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Catalog,
  ));
}
/// Create a copy of CatalogResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogCopyWith<$Res> get data {
  
  return $CatalogCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CatalogResponse].
extension CatalogResponsePatterns on CatalogResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogResponse value)  $default,){
final _that = this;
switch (_that) {
case _CatalogResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Catalog data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Catalog data)  $default,) {final _that = this;
switch (_that) {
case _CatalogResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Catalog data)?  $default,) {final _that = this;
switch (_that) {
case _CatalogResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatalogResponse implements CatalogResponse {
  const _CatalogResponse({required this.success, required this.data});
  factory _CatalogResponse.fromJson(Map<String, dynamic> json) => _$CatalogResponseFromJson(json);

@override final  bool success;
@override final  Catalog data;

/// Create a copy of CatalogResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogResponseCopyWith<_CatalogResponse> get copyWith => __$CatalogResponseCopyWithImpl<_CatalogResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'CatalogResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CatalogResponseCopyWith<$Res> implements $CatalogResponseCopyWith<$Res> {
  factory _$CatalogResponseCopyWith(_CatalogResponse value, $Res Function(_CatalogResponse) _then) = __$CatalogResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Catalog data
});


@override $CatalogCopyWith<$Res> get data;

}
/// @nodoc
class __$CatalogResponseCopyWithImpl<$Res>
    implements _$CatalogResponseCopyWith<$Res> {
  __$CatalogResponseCopyWithImpl(this._self, this._then);

  final _CatalogResponse _self;
  final $Res Function(_CatalogResponse) _then;

/// Create a copy of CatalogResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_CatalogResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Catalog,
  ));
}

/// Create a copy of CatalogResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogCopyWith<$Res> get data {
  
  return $CatalogCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
