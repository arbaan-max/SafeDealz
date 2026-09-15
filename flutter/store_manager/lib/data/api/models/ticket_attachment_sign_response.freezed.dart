// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_attachment_sign_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketAttachmentSignResponse {

 bool get success; TicketAttachmentSign get data;
/// Create a copy of TicketAttachmentSignResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketAttachmentSignResponseCopyWith<TicketAttachmentSignResponse> get copyWith => _$TicketAttachmentSignResponseCopyWithImpl<TicketAttachmentSignResponse>(this as TicketAttachmentSignResponse, _$identity);

  /// Serializes this TicketAttachmentSignResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketAttachmentSignResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'TicketAttachmentSignResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $TicketAttachmentSignResponseCopyWith<$Res>  {
  factory $TicketAttachmentSignResponseCopyWith(TicketAttachmentSignResponse value, $Res Function(TicketAttachmentSignResponse) _then) = _$TicketAttachmentSignResponseCopyWithImpl;
@useResult
$Res call({
 bool success, TicketAttachmentSign data
});


$TicketAttachmentSignCopyWith<$Res> get data;

}
/// @nodoc
class _$TicketAttachmentSignResponseCopyWithImpl<$Res>
    implements $TicketAttachmentSignResponseCopyWith<$Res> {
  _$TicketAttachmentSignResponseCopyWithImpl(this._self, this._then);

  final TicketAttachmentSignResponse _self;
  final $Res Function(TicketAttachmentSignResponse) _then;

/// Create a copy of TicketAttachmentSignResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TicketAttachmentSign,
  ));
}
/// Create a copy of TicketAttachmentSignResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketAttachmentSignCopyWith<$Res> get data {
  
  return $TicketAttachmentSignCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [TicketAttachmentSignResponse].
extension TicketAttachmentSignResponsePatterns on TicketAttachmentSignResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketAttachmentSignResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketAttachmentSignResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketAttachmentSignResponse value)  $default,){
final _that = this;
switch (_that) {
case _TicketAttachmentSignResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketAttachmentSignResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TicketAttachmentSignResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  TicketAttachmentSign data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketAttachmentSignResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  TicketAttachmentSign data)  $default,) {final _that = this;
switch (_that) {
case _TicketAttachmentSignResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  TicketAttachmentSign data)?  $default,) {final _that = this;
switch (_that) {
case _TicketAttachmentSignResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketAttachmentSignResponse implements TicketAttachmentSignResponse {
  const _TicketAttachmentSignResponse({required this.success, required this.data});
  factory _TicketAttachmentSignResponse.fromJson(Map<String, dynamic> json) => _$TicketAttachmentSignResponseFromJson(json);

@override final  bool success;
@override final  TicketAttachmentSign data;

/// Create a copy of TicketAttachmentSignResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketAttachmentSignResponseCopyWith<_TicketAttachmentSignResponse> get copyWith => __$TicketAttachmentSignResponseCopyWithImpl<_TicketAttachmentSignResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketAttachmentSignResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketAttachmentSignResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'TicketAttachmentSignResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$TicketAttachmentSignResponseCopyWith<$Res> implements $TicketAttachmentSignResponseCopyWith<$Res> {
  factory _$TicketAttachmentSignResponseCopyWith(_TicketAttachmentSignResponse value, $Res Function(_TicketAttachmentSignResponse) _then) = __$TicketAttachmentSignResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, TicketAttachmentSign data
});


@override $TicketAttachmentSignCopyWith<$Res> get data;

}
/// @nodoc
class __$TicketAttachmentSignResponseCopyWithImpl<$Res>
    implements _$TicketAttachmentSignResponseCopyWith<$Res> {
  __$TicketAttachmentSignResponseCopyWithImpl(this._self, this._then);

  final _TicketAttachmentSignResponse _self;
  final $Res Function(_TicketAttachmentSignResponse) _then;

/// Create a copy of TicketAttachmentSignResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_TicketAttachmentSignResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TicketAttachmentSign,
  ));
}

/// Create a copy of TicketAttachmentSignResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketAttachmentSignCopyWith<$Res> get data {
  
  return $TicketAttachmentSignCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
