// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data8.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Data8 {

 String? get id; String? get purpose; String? get objectKey; String? get status;
/// Create a copy of Data8
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Data8CopyWith<Data8> get copyWith => _$Data8CopyWithImpl<Data8>(this as Data8, _$identity);

  /// Serializes this Data8 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data8&&(identical(other.id, id) || other.id == id)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,purpose,objectKey,status);

@override
String toString() {
  return 'Data8(id: $id, purpose: $purpose, objectKey: $objectKey, status: $status)';
}


}

/// @nodoc
abstract mixin class $Data8CopyWith<$Res>  {
  factory $Data8CopyWith(Data8 value, $Res Function(Data8) _then) = _$Data8CopyWithImpl;
@useResult
$Res call({
 String? id, String? purpose, String? objectKey, String? status
});




}
/// @nodoc
class _$Data8CopyWithImpl<$Res>
    implements $Data8CopyWith<$Res> {
  _$Data8CopyWithImpl(this._self, this._then);

  final Data8 _self;
  final $Res Function(Data8) _then;

/// Create a copy of Data8
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? purpose = freezed,Object? objectKey = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Data8].
extension Data8Patterns on Data8 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data8 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data8() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data8 value)  $default,){
final _that = this;
switch (_that) {
case _Data8():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data8 value)?  $default,){
final _that = this;
switch (_that) {
case _Data8() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? purpose,  String? objectKey,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data8() when $default != null:
return $default(_that.id,_that.purpose,_that.objectKey,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? purpose,  String? objectKey,  String? status)  $default,) {final _that = this;
switch (_that) {
case _Data8():
return $default(_that.id,_that.purpose,_that.objectKey,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? purpose,  String? objectKey,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _Data8() when $default != null:
return $default(_that.id,_that.purpose,_that.objectKey,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data8 implements Data8 {
  const _Data8({this.id, this.purpose, this.objectKey, this.status});
  factory _Data8.fromJson(Map<String, dynamic> json) => _$Data8FromJson(json);

@override final  String? id;
@override final  String? purpose;
@override final  String? objectKey;
@override final  String? status;

/// Create a copy of Data8
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Data8CopyWith<_Data8> get copyWith => __$Data8CopyWithImpl<_Data8>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Data8ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data8&&(identical(other.id, id) || other.id == id)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,purpose,objectKey,status);

@override
String toString() {
  return 'Data8(id: $id, purpose: $purpose, objectKey: $objectKey, status: $status)';
}


}

/// @nodoc
abstract mixin class _$Data8CopyWith<$Res> implements $Data8CopyWith<$Res> {
  factory _$Data8CopyWith(_Data8 value, $Res Function(_Data8) _then) = __$Data8CopyWithImpl;
@override @useResult
$Res call({
 String? id, String? purpose, String? objectKey, String? status
});




}
/// @nodoc
class __$Data8CopyWithImpl<$Res>
    implements _$Data8CopyWith<$Res> {
  __$Data8CopyWithImpl(this._self, this._then);

  final _Data8 _self;
  final $Res Function(_Data8) _then;

/// Create a copy of Data8
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? purpose = freezed,Object? objectKey = freezed,Object? status = freezed,}) {
  return _then(_Data8(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
