// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audit_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuditListResponse {

 bool get success; List<AuditEvent> get data;
/// Create a copy of AuditListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuditListResponseCopyWith<AuditListResponse> get copyWith => _$AuditListResponseCopyWithImpl<AuditListResponse>(this as AuditListResponse, _$identity);

  /// Serializes this AuditListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuditListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AuditListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $AuditListResponseCopyWith<$Res>  {
  factory $AuditListResponseCopyWith(AuditListResponse value, $Res Function(AuditListResponse) _then) = _$AuditListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<AuditEvent> data
});




}
/// @nodoc
class _$AuditListResponseCopyWithImpl<$Res>
    implements $AuditListResponseCopyWith<$Res> {
  _$AuditListResponseCopyWithImpl(this._self, this._then);

  final AuditListResponse _self;
  final $Res Function(AuditListResponse) _then;

/// Create a copy of AuditListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AuditEvent>,
  ));
}

}


/// Adds pattern-matching-related methods to [AuditListResponse].
extension AuditListResponsePatterns on AuditListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuditListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuditListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuditListResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuditListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuditListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuditListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<AuditEvent> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuditListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<AuditEvent> data)  $default,) {final _that = this;
switch (_that) {
case _AuditListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<AuditEvent> data)?  $default,) {final _that = this;
switch (_that) {
case _AuditListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuditListResponse implements AuditListResponse {
  const _AuditListResponse({required this.success, required final  List<AuditEvent> data}): _data = data;
  factory _AuditListResponse.fromJson(Map<String, dynamic> json) => _$AuditListResponseFromJson(json);

@override final  bool success;
 final  List<AuditEvent> _data;
@override List<AuditEvent> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AuditListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuditListResponseCopyWith<_AuditListResponse> get copyWith => __$AuditListResponseCopyWithImpl<_AuditListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuditListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuditListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'AuditListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AuditListResponseCopyWith<$Res> implements $AuditListResponseCopyWith<$Res> {
  factory _$AuditListResponseCopyWith(_AuditListResponse value, $Res Function(_AuditListResponse) _then) = __$AuditListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<AuditEvent> data
});




}
/// @nodoc
class __$AuditListResponseCopyWithImpl<$Res>
    implements _$AuditListResponseCopyWith<$Res> {
  __$AuditListResponseCopyWithImpl(this._self, this._then);

  final _AuditListResponse _self;
  final $Res Function(_AuditListResponse) _then;

/// Create a copy of AuditListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_AuditListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AuditEvent>,
  ));
}


}

// dart format on
