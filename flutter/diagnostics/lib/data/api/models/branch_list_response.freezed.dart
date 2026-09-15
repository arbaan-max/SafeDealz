// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BranchListResponse {

 bool get success; List<Branch> get data;
/// Create a copy of BranchListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchListResponseCopyWith<BranchListResponse> get copyWith => _$BranchListResponseCopyWithImpl<BranchListResponse>(this as BranchListResponse, _$identity);

  /// Serializes this BranchListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BranchListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $BranchListResponseCopyWith<$Res>  {
  factory $BranchListResponseCopyWith(BranchListResponse value, $Res Function(BranchListResponse) _then) = _$BranchListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<Branch> data
});




}
/// @nodoc
class _$BranchListResponseCopyWithImpl<$Res>
    implements $BranchListResponseCopyWith<$Res> {
  _$BranchListResponseCopyWithImpl(this._self, this._then);

  final BranchListResponse _self;
  final $Res Function(BranchListResponse) _then;

/// Create a copy of BranchListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Branch>,
  ));
}

}


/// Adds pattern-matching-related methods to [BranchListResponse].
extension BranchListResponsePatterns on BranchListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchListResponse value)  $default,){
final _that = this;
switch (_that) {
case _BranchListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BranchListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<Branch> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<Branch> data)  $default,) {final _that = this;
switch (_that) {
case _BranchListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<Branch> data)?  $default,) {final _that = this;
switch (_that) {
case _BranchListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchListResponse implements BranchListResponse {
  const _BranchListResponse({required this.success, required final  List<Branch> data}): _data = data;
  factory _BranchListResponse.fromJson(Map<String, dynamic> json) => _$BranchListResponseFromJson(json);

@override final  bool success;
 final  List<Branch> _data;
@override List<Branch> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of BranchListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchListResponseCopyWith<_BranchListResponse> get copyWith => __$BranchListResponseCopyWithImpl<_BranchListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'BranchListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BranchListResponseCopyWith<$Res> implements $BranchListResponseCopyWith<$Res> {
  factory _$BranchListResponseCopyWith(_BranchListResponse value, $Res Function(_BranchListResponse) _then) = __$BranchListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<Branch> data
});




}
/// @nodoc
class __$BranchListResponseCopyWithImpl<$Res>
    implements _$BranchListResponseCopyWith<$Res> {
  __$BranchListResponseCopyWithImpl(this._self, this._then);

  final _BranchListResponse _self;
  final $Res Function(_BranchListResponse) _then;

/// Create a copy of BranchListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_BranchListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Branch>,
  ));
}


}

// dart format on
