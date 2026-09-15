// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DealResponse {

 bool get success; Deal get data;
/// Create a copy of DealResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DealResponseCopyWith<DealResponse> get copyWith => _$DealResponseCopyWithImpl<DealResponse>(this as DealResponse, _$identity);

  /// Serializes this DealResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DealResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'DealResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $DealResponseCopyWith<$Res>  {
  factory $DealResponseCopyWith(DealResponse value, $Res Function(DealResponse) _then) = _$DealResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Deal data
});


$DealCopyWith<$Res> get data;

}
/// @nodoc
class _$DealResponseCopyWithImpl<$Res>
    implements $DealResponseCopyWith<$Res> {
  _$DealResponseCopyWithImpl(this._self, this._then);

  final DealResponse _self;
  final $Res Function(DealResponse) _then;

/// Create a copy of DealResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Deal,
  ));
}
/// Create a copy of DealResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DealCopyWith<$Res> get data {
  
  return $DealCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [DealResponse].
extension DealResponsePatterns on DealResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DealResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DealResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DealResponse value)  $default,){
final _that = this;
switch (_that) {
case _DealResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DealResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DealResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Deal data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DealResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Deal data)  $default,) {final _that = this;
switch (_that) {
case _DealResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Deal data)?  $default,) {final _that = this;
switch (_that) {
case _DealResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DealResponse implements DealResponse {
  const _DealResponse({required this.success, required this.data});
  factory _DealResponse.fromJson(Map<String, dynamic> json) => _$DealResponseFromJson(json);

@override final  bool success;
@override final  Deal data;

/// Create a copy of DealResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DealResponseCopyWith<_DealResponse> get copyWith => __$DealResponseCopyWithImpl<_DealResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DealResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DealResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'DealResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DealResponseCopyWith<$Res> implements $DealResponseCopyWith<$Res> {
  factory _$DealResponseCopyWith(_DealResponse value, $Res Function(_DealResponse) _then) = __$DealResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Deal data
});


@override $DealCopyWith<$Res> get data;

}
/// @nodoc
class __$DealResponseCopyWithImpl<$Res>
    implements _$DealResponseCopyWith<$Res> {
  __$DealResponseCopyWithImpl(this._self, this._then);

  final _DealResponse _self;
  final $Res Function(_DealResponse) _then;

/// Create a copy of DealResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_DealResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Deal,
  ));
}

/// Create a copy of DealResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DealCopyWith<$Res> get data {
  
  return $DealCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
