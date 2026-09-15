// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminResponse {

 bool get success; AdminAccount get data;
/// Create a copy of AdminResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminResponseCopyWith<AdminResponse> get copyWith => _$AdminResponseCopyWithImpl<AdminResponse>(this as AdminResponse, _$identity);

  /// Serializes this AdminResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'AdminResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $AdminResponseCopyWith<$Res>  {
  factory $AdminResponseCopyWith(AdminResponse value, $Res Function(AdminResponse) _then) = _$AdminResponseCopyWithImpl;
@useResult
$Res call({
 bool success, AdminAccount data
});


$AdminAccountCopyWith<$Res> get data;

}
/// @nodoc
class _$AdminResponseCopyWithImpl<$Res>
    implements $AdminResponseCopyWith<$Res> {
  _$AdminResponseCopyWithImpl(this._self, this._then);

  final AdminResponse _self;
  final $Res Function(AdminResponse) _then;

/// Create a copy of AdminResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AdminAccount,
  ));
}
/// Create a copy of AdminResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminAccountCopyWith<$Res> get data {
  
  return $AdminAccountCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminResponse].
extension AdminResponsePatterns on AdminResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminResponse value)  $default,){
final _that = this;
switch (_that) {
case _AdminResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AdminResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  AdminAccount data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  AdminAccount data)  $default,) {final _that = this;
switch (_that) {
case _AdminResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  AdminAccount data)?  $default,) {final _that = this;
switch (_that) {
case _AdminResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminResponse implements AdminResponse {
  const _AdminResponse({required this.success, required this.data});
  factory _AdminResponse.fromJson(Map<String, dynamic> json) => _$AdminResponseFromJson(json);

@override final  bool success;
@override final  AdminAccount data;

/// Create a copy of AdminResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminResponseCopyWith<_AdminResponse> get copyWith => __$AdminResponseCopyWithImpl<_AdminResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'AdminResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AdminResponseCopyWith<$Res> implements $AdminResponseCopyWith<$Res> {
  factory _$AdminResponseCopyWith(_AdminResponse value, $Res Function(_AdminResponse) _then) = __$AdminResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, AdminAccount data
});


@override $AdminAccountCopyWith<$Res> get data;

}
/// @nodoc
class __$AdminResponseCopyWithImpl<$Res>
    implements _$AdminResponseCopyWith<$Res> {
  __$AdminResponseCopyWithImpl(this._self, this._then);

  final _AdminResponse _self;
  final $Res Function(_AdminResponse) _then;

/// Create a copy of AdminResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_AdminResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AdminAccount,
  ));
}

/// Create a copy of AdminResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminAccountCopyWith<$Res> get data {
  
  return $AdminAccountCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
