// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentListResponse {

 bool get success; List<PaymentInstruction> get data;
/// Create a copy of PaymentListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentListResponseCopyWith<PaymentListResponse> get copyWith => _$PaymentListResponseCopyWithImpl<PaymentListResponse>(this as PaymentListResponse, _$identity);

  /// Serializes this PaymentListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PaymentListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $PaymentListResponseCopyWith<$Res>  {
  factory $PaymentListResponseCopyWith(PaymentListResponse value, $Res Function(PaymentListResponse) _then) = _$PaymentListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<PaymentInstruction> data
});




}
/// @nodoc
class _$PaymentListResponseCopyWithImpl<$Res>
    implements $PaymentListResponseCopyWith<$Res> {
  _$PaymentListResponseCopyWithImpl(this._self, this._then);

  final PaymentListResponse _self;
  final $Res Function(PaymentListResponse) _then;

/// Create a copy of PaymentListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PaymentInstruction>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentListResponse].
extension PaymentListResponsePatterns on PaymentListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentListResponse value)  $default,){
final _that = this;
switch (_that) {
case _PaymentListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<PaymentInstruction> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<PaymentInstruction> data)  $default,) {final _that = this;
switch (_that) {
case _PaymentListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<PaymentInstruction> data)?  $default,) {final _that = this;
switch (_that) {
case _PaymentListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentListResponse implements PaymentListResponse {
  const _PaymentListResponse({required this.success, required final  List<PaymentInstruction> data}): _data = data;
  factory _PaymentListResponse.fromJson(Map<String, dynamic> json) => _$PaymentListResponseFromJson(json);

@override final  bool success;
 final  List<PaymentInstruction> _data;
@override List<PaymentInstruction> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of PaymentListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentListResponseCopyWith<_PaymentListResponse> get copyWith => __$PaymentListResponseCopyWithImpl<_PaymentListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'PaymentListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PaymentListResponseCopyWith<$Res> implements $PaymentListResponseCopyWith<$Res> {
  factory _$PaymentListResponseCopyWith(_PaymentListResponse value, $Res Function(_PaymentListResponse) _then) = __$PaymentListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<PaymentInstruction> data
});




}
/// @nodoc
class __$PaymentListResponseCopyWithImpl<$Res>
    implements _$PaymentListResponseCopyWith<$Res> {
  __$PaymentListResponseCopyWithImpl(this._self, this._then);

  final _PaymentListResponse _self;
  final $Res Function(_PaymentListResponse) _then;

/// Create a copy of PaymentListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_PaymentListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PaymentInstruction>,
  ));
}


}

// dart format on
