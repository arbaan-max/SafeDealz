// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportTicketListResponse {

 bool get success; List<SupportTicket> get data;
/// Create a copy of SupportTicketListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportTicketListResponseCopyWith<SupportTicketListResponse> get copyWith => _$SupportTicketListResponseCopyWithImpl<SupportTicketListResponse>(this as SupportTicketListResponse, _$identity);

  /// Serializes this SupportTicketListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportTicketListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SupportTicketListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $SupportTicketListResponseCopyWith<$Res>  {
  factory $SupportTicketListResponseCopyWith(SupportTicketListResponse value, $Res Function(SupportTicketListResponse) _then) = _$SupportTicketListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<SupportTicket> data
});




}
/// @nodoc
class _$SupportTicketListResponseCopyWithImpl<$Res>
    implements $SupportTicketListResponseCopyWith<$Res> {
  _$SupportTicketListResponseCopyWithImpl(this._self, this._then);

  final SupportTicketListResponse _self;
  final $Res Function(SupportTicketListResponse) _then;

/// Create a copy of SupportTicketListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<SupportTicket>,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportTicketListResponse].
extension SupportTicketListResponsePatterns on SupportTicketListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportTicketListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportTicketListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportTicketListResponse value)  $default,){
final _that = this;
switch (_that) {
case _SupportTicketListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportTicketListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SupportTicketListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<SupportTicket> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportTicketListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<SupportTicket> data)  $default,) {final _that = this;
switch (_that) {
case _SupportTicketListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<SupportTicket> data)?  $default,) {final _that = this;
switch (_that) {
case _SupportTicketListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportTicketListResponse implements SupportTicketListResponse {
  const _SupportTicketListResponse({required this.success, required final  List<SupportTicket> data}): _data = data;
  factory _SupportTicketListResponse.fromJson(Map<String, dynamic> json) => _$SupportTicketListResponseFromJson(json);

@override final  bool success;
 final  List<SupportTicket> _data;
@override List<SupportTicket> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of SupportTicketListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportTicketListResponseCopyWith<_SupportTicketListResponse> get copyWith => __$SupportTicketListResponseCopyWithImpl<_SupportTicketListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportTicketListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportTicketListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'SupportTicketListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SupportTicketListResponseCopyWith<$Res> implements $SupportTicketListResponseCopyWith<$Res> {
  factory _$SupportTicketListResponseCopyWith(_SupportTicketListResponse value, $Res Function(_SupportTicketListResponse) _then) = __$SupportTicketListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<SupportTicket> data
});




}
/// @nodoc
class __$SupportTicketListResponseCopyWithImpl<$Res>
    implements _$SupportTicketListResponseCopyWith<$Res> {
  __$SupportTicketListResponseCopyWithImpl(this._self, this._then);

  final _SupportTicketListResponse _self;
  final $Res Function(_SupportTicketListResponse) _then;

/// Create a copy of SupportTicketListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_SupportTicketListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<SupportTicket>,
  ));
}


}

// dart format on
