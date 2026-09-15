// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BidListResponse {

 bool get success; List<Bid> get data;
/// Create a copy of BidListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BidListResponseCopyWith<BidListResponse> get copyWith => _$BidListResponseCopyWithImpl<BidListResponse>(this as BidListResponse, _$identity);

  /// Serializes this BidListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BidListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BidListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $BidListResponseCopyWith<$Res>  {
  factory $BidListResponseCopyWith(BidListResponse value, $Res Function(BidListResponse) _then) = _$BidListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<Bid> data
});




}
/// @nodoc
class _$BidListResponseCopyWithImpl<$Res>
    implements $BidListResponseCopyWith<$Res> {
  _$BidListResponseCopyWithImpl(this._self, this._then);

  final BidListResponse _self;
  final $Res Function(BidListResponse) _then;

/// Create a copy of BidListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Bid>,
  ));
}

}


/// Adds pattern-matching-related methods to [BidListResponse].
extension BidListResponsePatterns on BidListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BidListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BidListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BidListResponse value)  $default,){
final _that = this;
switch (_that) {
case _BidListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BidListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BidListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<Bid> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BidListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<Bid> data)  $default,) {final _that = this;
switch (_that) {
case _BidListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<Bid> data)?  $default,) {final _that = this;
switch (_that) {
case _BidListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BidListResponse implements BidListResponse {
  const _BidListResponse({required this.success, required final  List<Bid> data}): _data = data;
  factory _BidListResponse.fromJson(Map<String, dynamic> json) => _$BidListResponseFromJson(json);

@override final  bool success;
 final  List<Bid> _data;
@override List<Bid> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of BidListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BidListResponseCopyWith<_BidListResponse> get copyWith => __$BidListResponseCopyWithImpl<_BidListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BidListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BidListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'BidListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BidListResponseCopyWith<$Res> implements $BidListResponseCopyWith<$Res> {
  factory _$BidListResponseCopyWith(_BidListResponse value, $Res Function(_BidListResponse) _then) = __$BidListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<Bid> data
});




}
/// @nodoc
class __$BidListResponseCopyWithImpl<$Res>
    implements _$BidListResponseCopyWith<$Res> {
  __$BidListResponseCopyWithImpl(this._self, this._then);

  final _BidListResponse _self;
  final $Res Function(_BidListResponse) _then;

/// Create a copy of BidListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_BidListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Bid>,
  ));
}


}

// dart format on
