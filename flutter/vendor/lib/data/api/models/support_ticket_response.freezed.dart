// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportTicketResponse {

 bool get success; SupportTicket get data;
/// Create a copy of SupportTicketResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportTicketResponseCopyWith<SupportTicketResponse> get copyWith => _$SupportTicketResponseCopyWithImpl<SupportTicketResponse>(this as SupportTicketResponse, _$identity);

  /// Serializes this SupportTicketResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportTicketResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'SupportTicketResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $SupportTicketResponseCopyWith<$Res>  {
  factory $SupportTicketResponseCopyWith(SupportTicketResponse value, $Res Function(SupportTicketResponse) _then) = _$SupportTicketResponseCopyWithImpl;
@useResult
$Res call({
 bool success, SupportTicket data
});


$SupportTicketCopyWith<$Res> get data;

}
/// @nodoc
class _$SupportTicketResponseCopyWithImpl<$Res>
    implements $SupportTicketResponseCopyWith<$Res> {
  _$SupportTicketResponseCopyWithImpl(this._self, this._then);

  final SupportTicketResponse _self;
  final $Res Function(SupportTicketResponse) _then;

/// Create a copy of SupportTicketResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SupportTicket,
  ));
}
/// Create a copy of SupportTicketResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupportTicketCopyWith<$Res> get data {
  
  return $SupportTicketCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SupportTicketResponse].
extension SupportTicketResponsePatterns on SupportTicketResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportTicketResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportTicketResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportTicketResponse value)  $default,){
final _that = this;
switch (_that) {
case _SupportTicketResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportTicketResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SupportTicketResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  SupportTicket data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportTicketResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  SupportTicket data)  $default,) {final _that = this;
switch (_that) {
case _SupportTicketResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  SupportTicket data)?  $default,) {final _that = this;
switch (_that) {
case _SupportTicketResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportTicketResponse implements SupportTicketResponse {
  const _SupportTicketResponse({required this.success, required this.data});
  factory _SupportTicketResponse.fromJson(Map<String, dynamic> json) => _$SupportTicketResponseFromJson(json);

@override final  bool success;
@override final  SupportTicket data;

/// Create a copy of SupportTicketResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportTicketResponseCopyWith<_SupportTicketResponse> get copyWith => __$SupportTicketResponseCopyWithImpl<_SupportTicketResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportTicketResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportTicketResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'SupportTicketResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SupportTicketResponseCopyWith<$Res> implements $SupportTicketResponseCopyWith<$Res> {
  factory _$SupportTicketResponseCopyWith(_SupportTicketResponse value, $Res Function(_SupportTicketResponse) _then) = __$SupportTicketResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, SupportTicket data
});


@override $SupportTicketCopyWith<$Res> get data;

}
/// @nodoc
class __$SupportTicketResponseCopyWithImpl<$Res>
    implements _$SupportTicketResponseCopyWith<$Res> {
  __$SupportTicketResponseCopyWithImpl(this._self, this._then);

  final _SupportTicketResponse _self;
  final $Res Function(_SupportTicketResponse) _then;

/// Create a copy of SupportTicketResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_SupportTicketResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SupportTicket,
  ));
}

/// Create a copy of SupportTicketResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupportTicketCopyWith<$Res> get data {
  
  return $SupportTicketCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
