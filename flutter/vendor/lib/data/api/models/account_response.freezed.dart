// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountResponse {

 bool get success; AccountSummary get data;
/// Create a copy of AccountResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountResponseCopyWith<AccountResponse> get copyWith => _$AccountResponseCopyWithImpl<AccountResponse>(this as AccountResponse, _$identity);

  /// Serializes this AccountResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'AccountResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $AccountResponseCopyWith<$Res>  {
  factory $AccountResponseCopyWith(AccountResponse value, $Res Function(AccountResponse) _then) = _$AccountResponseCopyWithImpl;
@useResult
$Res call({
 bool success, AccountSummary data
});


$AccountSummaryCopyWith<$Res> get data;

}
/// @nodoc
class _$AccountResponseCopyWithImpl<$Res>
    implements $AccountResponseCopyWith<$Res> {
  _$AccountResponseCopyWithImpl(this._self, this._then);

  final AccountResponse _self;
  final $Res Function(AccountResponse) _then;

/// Create a copy of AccountResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AccountSummary,
  ));
}
/// Create a copy of AccountResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountSummaryCopyWith<$Res> get data {
  
  return $AccountSummaryCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AccountResponse].
extension AccountResponsePatterns on AccountResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountResponse value)  $default,){
final _that = this;
switch (_that) {
case _AccountResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AccountResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  AccountSummary data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  AccountSummary data)  $default,) {final _that = this;
switch (_that) {
case _AccountResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  AccountSummary data)?  $default,) {final _that = this;
switch (_that) {
case _AccountResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountResponse implements AccountResponse {
  const _AccountResponse({required this.success, required this.data});
  factory _AccountResponse.fromJson(Map<String, dynamic> json) => _$AccountResponseFromJson(json);

@override final  bool success;
@override final  AccountSummary data;

/// Create a copy of AccountResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountResponseCopyWith<_AccountResponse> get copyWith => __$AccountResponseCopyWithImpl<_AccountResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'AccountResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AccountResponseCopyWith<$Res> implements $AccountResponseCopyWith<$Res> {
  factory _$AccountResponseCopyWith(_AccountResponse value, $Res Function(_AccountResponse) _then) = __$AccountResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, AccountSummary data
});


@override $AccountSummaryCopyWith<$Res> get data;

}
/// @nodoc
class __$AccountResponseCopyWithImpl<$Res>
    implements _$AccountResponseCopyWith<$Res> {
  __$AccountResponseCopyWithImpl(this._self, this._then);

  final _AccountResponse _self;
  final $Res Function(_AccountResponse) _then;

/// Create a copy of AccountResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_AccountResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AccountSummary,
  ));
}

/// Create a copy of AccountResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountSummaryCopyWith<$Res> get data {
  
  return $AccountSummaryCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
