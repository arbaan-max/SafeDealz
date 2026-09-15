// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_broadcast_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationBroadcastResponse {

 bool get success; NotificationBroadcast get data;
/// Create a copy of NotificationBroadcastResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationBroadcastResponseCopyWith<NotificationBroadcastResponse> get copyWith => _$NotificationBroadcastResponseCopyWithImpl<NotificationBroadcastResponse>(this as NotificationBroadcastResponse, _$identity);

  /// Serializes this NotificationBroadcastResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationBroadcastResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'NotificationBroadcastResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $NotificationBroadcastResponseCopyWith<$Res>  {
  factory $NotificationBroadcastResponseCopyWith(NotificationBroadcastResponse value, $Res Function(NotificationBroadcastResponse) _then) = _$NotificationBroadcastResponseCopyWithImpl;
@useResult
$Res call({
 bool success, NotificationBroadcast data
});


$NotificationBroadcastCopyWith<$Res> get data;

}
/// @nodoc
class _$NotificationBroadcastResponseCopyWithImpl<$Res>
    implements $NotificationBroadcastResponseCopyWith<$Res> {
  _$NotificationBroadcastResponseCopyWithImpl(this._self, this._then);

  final NotificationBroadcastResponse _self;
  final $Res Function(NotificationBroadcastResponse) _then;

/// Create a copy of NotificationBroadcastResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationBroadcast,
  ));
}
/// Create a copy of NotificationBroadcastResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationBroadcastCopyWith<$Res> get data {
  
  return $NotificationBroadcastCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationBroadcastResponse].
extension NotificationBroadcastResponsePatterns on NotificationBroadcastResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationBroadcastResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationBroadcastResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationBroadcastResponse value)  $default,){
final _that = this;
switch (_that) {
case _NotificationBroadcastResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationBroadcastResponse value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationBroadcastResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  NotificationBroadcast data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationBroadcastResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  NotificationBroadcast data)  $default,) {final _that = this;
switch (_that) {
case _NotificationBroadcastResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  NotificationBroadcast data)?  $default,) {final _that = this;
switch (_that) {
case _NotificationBroadcastResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationBroadcastResponse implements NotificationBroadcastResponse {
  const _NotificationBroadcastResponse({required this.success, required this.data});
  factory _NotificationBroadcastResponse.fromJson(Map<String, dynamic> json) => _$NotificationBroadcastResponseFromJson(json);

@override final  bool success;
@override final  NotificationBroadcast data;

/// Create a copy of NotificationBroadcastResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationBroadcastResponseCopyWith<_NotificationBroadcastResponse> get copyWith => __$NotificationBroadcastResponseCopyWithImpl<_NotificationBroadcastResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationBroadcastResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationBroadcastResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'NotificationBroadcastResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$NotificationBroadcastResponseCopyWith<$Res> implements $NotificationBroadcastResponseCopyWith<$Res> {
  factory _$NotificationBroadcastResponseCopyWith(_NotificationBroadcastResponse value, $Res Function(_NotificationBroadcastResponse) _then) = __$NotificationBroadcastResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, NotificationBroadcast data
});


@override $NotificationBroadcastCopyWith<$Res> get data;

}
/// @nodoc
class __$NotificationBroadcastResponseCopyWithImpl<$Res>
    implements _$NotificationBroadcastResponseCopyWith<$Res> {
  __$NotificationBroadcastResponseCopyWithImpl(this._self, this._then);

  final _NotificationBroadcastResponse _self;
  final $Res Function(_NotificationBroadcastResponse) _then;

/// Create a copy of NotificationBroadcastResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_NotificationBroadcastResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationBroadcast,
  ));
}

/// Create a copy of NotificationBroadcastResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationBroadcastCopyWith<$Res> get data {
  
  return $NotificationBroadcastCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
