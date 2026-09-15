// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BranchResponse {

 bool get success; Branch get data;
/// Create a copy of BranchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchResponseCopyWith<BranchResponse> get copyWith => _$BranchResponseCopyWithImpl<BranchResponse>(this as BranchResponse, _$identity);

  /// Serializes this BranchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'BranchResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $BranchResponseCopyWith<$Res>  {
  factory $BranchResponseCopyWith(BranchResponse value, $Res Function(BranchResponse) _then) = _$BranchResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Branch data
});


$BranchCopyWith<$Res> get data;

}
/// @nodoc
class _$BranchResponseCopyWithImpl<$Res>
    implements $BranchResponseCopyWith<$Res> {
  _$BranchResponseCopyWithImpl(this._self, this._then);

  final BranchResponse _self;
  final $Res Function(BranchResponse) _then;

/// Create a copy of BranchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Branch,
  ));
}
/// Create a copy of BranchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res> get data {
  
  return $BranchCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [BranchResponse].
extension BranchResponsePatterns on BranchResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchResponse value)  $default,){
final _that = this;
switch (_that) {
case _BranchResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BranchResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Branch data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Branch data)  $default,) {final _that = this;
switch (_that) {
case _BranchResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Branch data)?  $default,) {final _that = this;
switch (_that) {
case _BranchResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchResponse implements BranchResponse {
  const _BranchResponse({required this.success, required this.data});
  factory _BranchResponse.fromJson(Map<String, dynamic> json) => _$BranchResponseFromJson(json);

@override final  bool success;
@override final  Branch data;

/// Create a copy of BranchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchResponseCopyWith<_BranchResponse> get copyWith => __$BranchResponseCopyWithImpl<_BranchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'BranchResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BranchResponseCopyWith<$Res> implements $BranchResponseCopyWith<$Res> {
  factory _$BranchResponseCopyWith(_BranchResponse value, $Res Function(_BranchResponse) _then) = __$BranchResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Branch data
});


@override $BranchCopyWith<$Res> get data;

}
/// @nodoc
class __$BranchResponseCopyWithImpl<$Res>
    implements _$BranchResponseCopyWith<$Res> {
  __$BranchResponseCopyWithImpl(this._self, this._then);

  final _BranchResponse _self;
  final $Res Function(_BranchResponse) _then;

/// Create a copy of BranchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_BranchResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Branch,
  ));
}

/// Create a copy of BranchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res> get data {
  
  return $BranchCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
