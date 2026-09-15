// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletListResponse {

 bool get success; List<VendorWallet> get data;
/// Create a copy of WalletListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletListResponseCopyWith<WalletListResponse> get copyWith => _$WalletListResponseCopyWithImpl<WalletListResponse>(this as WalletListResponse, _$identity);

  /// Serializes this WalletListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'WalletListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $WalletListResponseCopyWith<$Res>  {
  factory $WalletListResponseCopyWith(WalletListResponse value, $Res Function(WalletListResponse) _then) = _$WalletListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<VendorWallet> data
});




}
/// @nodoc
class _$WalletListResponseCopyWithImpl<$Res>
    implements $WalletListResponseCopyWith<$Res> {
  _$WalletListResponseCopyWithImpl(this._self, this._then);

  final WalletListResponse _self;
  final $Res Function(WalletListResponse) _then;

/// Create a copy of WalletListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<VendorWallet>,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletListResponse].
extension WalletListResponsePatterns on WalletListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletListResponse value)  $default,){
final _that = this;
switch (_that) {
case _WalletListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _WalletListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<VendorWallet> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<VendorWallet> data)  $default,) {final _that = this;
switch (_that) {
case _WalletListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<VendorWallet> data)?  $default,) {final _that = this;
switch (_that) {
case _WalletListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletListResponse implements WalletListResponse {
  const _WalletListResponse({required this.success, required final  List<VendorWallet> data}): _data = data;
  factory _WalletListResponse.fromJson(Map<String, dynamic> json) => _$WalletListResponseFromJson(json);

@override final  bool success;
 final  List<VendorWallet> _data;
@override List<VendorWallet> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of WalletListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletListResponseCopyWith<_WalletListResponse> get copyWith => __$WalletListResponseCopyWithImpl<_WalletListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'WalletListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$WalletListResponseCopyWith<$Res> implements $WalletListResponseCopyWith<$Res> {
  factory _$WalletListResponseCopyWith(_WalletListResponse value, $Res Function(_WalletListResponse) _then) = __$WalletListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<VendorWallet> data
});




}
/// @nodoc
class __$WalletListResponseCopyWithImpl<$Res>
    implements _$WalletListResponseCopyWith<$Res> {
  __$WalletListResponseCopyWithImpl(this._self, this._then);

  final _WalletListResponse _self;
  final $Res Function(_WalletListResponse) _then;

/// Create a copy of WalletListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_WalletListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<VendorWallet>,
  ));
}


}

// dart format on
