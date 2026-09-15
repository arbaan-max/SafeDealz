// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manager_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ManagerListResponse {

 bool get success; List<ManagerAccount> get data;
/// Create a copy of ManagerListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManagerListResponseCopyWith<ManagerListResponse> get copyWith => _$ManagerListResponseCopyWithImpl<ManagerListResponse>(this as ManagerListResponse, _$identity);

  /// Serializes this ManagerListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManagerListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ManagerListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ManagerListResponseCopyWith<$Res>  {
  factory $ManagerListResponseCopyWith(ManagerListResponse value, $Res Function(ManagerListResponse) _then) = _$ManagerListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<ManagerAccount> data
});




}
/// @nodoc
class _$ManagerListResponseCopyWithImpl<$Res>
    implements $ManagerListResponseCopyWith<$Res> {
  _$ManagerListResponseCopyWithImpl(this._self, this._then);

  final ManagerListResponse _self;
  final $Res Function(ManagerListResponse) _then;

/// Create a copy of ManagerListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ManagerAccount>,
  ));
}

}


/// Adds pattern-matching-related methods to [ManagerListResponse].
extension ManagerListResponsePatterns on ManagerListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ManagerListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ManagerListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ManagerListResponse value)  $default,){
final _that = this;
switch (_that) {
case _ManagerListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ManagerListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ManagerListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<ManagerAccount> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ManagerListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<ManagerAccount> data)  $default,) {final _that = this;
switch (_that) {
case _ManagerListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<ManagerAccount> data)?  $default,) {final _that = this;
switch (_that) {
case _ManagerListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ManagerListResponse implements ManagerListResponse {
  const _ManagerListResponse({required this.success, required final  List<ManagerAccount> data}): _data = data;
  factory _ManagerListResponse.fromJson(Map<String, dynamic> json) => _$ManagerListResponseFromJson(json);

@override final  bool success;
 final  List<ManagerAccount> _data;
@override List<ManagerAccount> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ManagerListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ManagerListResponseCopyWith<_ManagerListResponse> get copyWith => __$ManagerListResponseCopyWithImpl<_ManagerListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ManagerListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ManagerListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ManagerListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ManagerListResponseCopyWith<$Res> implements $ManagerListResponseCopyWith<$Res> {
  factory _$ManagerListResponseCopyWith(_ManagerListResponse value, $Res Function(_ManagerListResponse) _then) = __$ManagerListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<ManagerAccount> data
});




}
/// @nodoc
class __$ManagerListResponseCopyWithImpl<$Res>
    implements _$ManagerListResponseCopyWith<$Res> {
  __$ManagerListResponseCopyWithImpl(this._self, this._then);

  final _ManagerListResponse _self;
  final $Res Function(_ManagerListResponse) _then;

/// Create a copy of ManagerListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ManagerListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ManagerAccount>,
  ));
}


}

// dart format on
