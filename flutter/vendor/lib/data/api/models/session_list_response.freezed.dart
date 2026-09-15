// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionListResponse {

 bool get success; List<AccountSession> get data;
/// Create a copy of SessionListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionListResponseCopyWith<SessionListResponse> get copyWith => _$SessionListResponseCopyWithImpl<SessionListResponse>(this as SessionListResponse, _$identity);

  /// Serializes this SessionListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SessionListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $SessionListResponseCopyWith<$Res>  {
  factory $SessionListResponseCopyWith(SessionListResponse value, $Res Function(SessionListResponse) _then) = _$SessionListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<AccountSession> data
});




}
/// @nodoc
class _$SessionListResponseCopyWithImpl<$Res>
    implements $SessionListResponseCopyWith<$Res> {
  _$SessionListResponseCopyWithImpl(this._self, this._then);

  final SessionListResponse _self;
  final $Res Function(SessionListResponse) _then;

/// Create a copy of SessionListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AccountSession>,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionListResponse].
extension SessionListResponsePatterns on SessionListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionListResponse value)  $default,){
final _that = this;
switch (_that) {
case _SessionListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SessionListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<AccountSession> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<AccountSession> data)  $default,) {final _that = this;
switch (_that) {
case _SessionListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<AccountSession> data)?  $default,) {final _that = this;
switch (_that) {
case _SessionListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionListResponse implements SessionListResponse {
  const _SessionListResponse({required this.success, required final  List<AccountSession> data}): _data = data;
  factory _SessionListResponse.fromJson(Map<String, dynamic> json) => _$SessionListResponseFromJson(json);

@override final  bool success;
 final  List<AccountSession> _data;
@override List<AccountSession> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of SessionListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionListResponseCopyWith<_SessionListResponse> get copyWith => __$SessionListResponseCopyWithImpl<_SessionListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'SessionListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SessionListResponseCopyWith<$Res> implements $SessionListResponseCopyWith<$Res> {
  factory _$SessionListResponseCopyWith(_SessionListResponse value, $Res Function(_SessionListResponse) _then) = __$SessionListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<AccountSession> data
});




}
/// @nodoc
class __$SessionListResponseCopyWithImpl<$Res>
    implements _$SessionListResponseCopyWith<$Res> {
  __$SessionListResponseCopyWithImpl(this._self, this._then);

  final _SessionListResponse _self;
  final $Res Function(_SessionListResponse) _then;

/// Create a copy of SessionListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_SessionListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AccountSession>,
  ));
}


}

// dart format on
