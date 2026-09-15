// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assigned_store_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssignedStoreListResponse {

 bool get success; List<AssignedStore> get data;
/// Create a copy of AssignedStoreListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssignedStoreListResponseCopyWith<AssignedStoreListResponse> get copyWith => _$AssignedStoreListResponseCopyWithImpl<AssignedStoreListResponse>(this as AssignedStoreListResponse, _$identity);

  /// Serializes this AssignedStoreListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssignedStoreListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AssignedStoreListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $AssignedStoreListResponseCopyWith<$Res>  {
  factory $AssignedStoreListResponseCopyWith(AssignedStoreListResponse value, $Res Function(AssignedStoreListResponse) _then) = _$AssignedStoreListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<AssignedStore> data
});




}
/// @nodoc
class _$AssignedStoreListResponseCopyWithImpl<$Res>
    implements $AssignedStoreListResponseCopyWith<$Res> {
  _$AssignedStoreListResponseCopyWithImpl(this._self, this._then);

  final AssignedStoreListResponse _self;
  final $Res Function(AssignedStoreListResponse) _then;

/// Create a copy of AssignedStoreListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AssignedStore>,
  ));
}

}


/// Adds pattern-matching-related methods to [AssignedStoreListResponse].
extension AssignedStoreListResponsePatterns on AssignedStoreListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssignedStoreListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssignedStoreListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssignedStoreListResponse value)  $default,){
final _that = this;
switch (_that) {
case _AssignedStoreListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssignedStoreListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AssignedStoreListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<AssignedStore> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssignedStoreListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<AssignedStore> data)  $default,) {final _that = this;
switch (_that) {
case _AssignedStoreListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<AssignedStore> data)?  $default,) {final _that = this;
switch (_that) {
case _AssignedStoreListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssignedStoreListResponse implements AssignedStoreListResponse {
  const _AssignedStoreListResponse({required this.success, required final  List<AssignedStore> data}): _data = data;
  factory _AssignedStoreListResponse.fromJson(Map<String, dynamic> json) => _$AssignedStoreListResponseFromJson(json);

@override final  bool success;
 final  List<AssignedStore> _data;
@override List<AssignedStore> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AssignedStoreListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssignedStoreListResponseCopyWith<_AssignedStoreListResponse> get copyWith => __$AssignedStoreListResponseCopyWithImpl<_AssignedStoreListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssignedStoreListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssignedStoreListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'AssignedStoreListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AssignedStoreListResponseCopyWith<$Res> implements $AssignedStoreListResponseCopyWith<$Res> {
  factory _$AssignedStoreListResponseCopyWith(_AssignedStoreListResponse value, $Res Function(_AssignedStoreListResponse) _then) = __$AssignedStoreListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<AssignedStore> data
});




}
/// @nodoc
class __$AssignedStoreListResponseCopyWithImpl<$Res>
    implements _$AssignedStoreListResponseCopyWith<$Res> {
  __$AssignedStoreListResponseCopyWithImpl(this._self, this._then);

  final _AssignedStoreListResponse _self;
  final $Res Function(_AssignedStoreListResponse) _then;

/// Create a copy of AssignedStoreListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_AssignedStoreListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AssignedStore>,
  ));
}


}

// dart format on
