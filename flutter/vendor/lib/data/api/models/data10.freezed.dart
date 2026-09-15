// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data10.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Data10 {

 String? get id; String? get deviceId; String? get status;
/// Create a copy of Data10
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Data10CopyWith<Data10> get copyWith => _$Data10CopyWithImpl<Data10>(this as Data10, _$identity);

  /// Serializes this Data10 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data10&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceId,status);

@override
String toString() {
  return 'Data10(id: $id, deviceId: $deviceId, status: $status)';
}


}

/// @nodoc
abstract mixin class $Data10CopyWith<$Res>  {
  factory $Data10CopyWith(Data10 value, $Res Function(Data10) _then) = _$Data10CopyWithImpl;
@useResult
$Res call({
 String? id, String? deviceId, String? status
});




}
/// @nodoc
class _$Data10CopyWithImpl<$Res>
    implements $Data10CopyWith<$Res> {
  _$Data10CopyWithImpl(this._self, this._then);

  final Data10 _self;
  final $Res Function(Data10) _then;

/// Create a copy of Data10
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? deviceId = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Data10].
extension Data10Patterns on Data10 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data10 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data10() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data10 value)  $default,){
final _that = this;
switch (_that) {
case _Data10():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data10 value)?  $default,){
final _that = this;
switch (_that) {
case _Data10() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? deviceId,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data10() when $default != null:
return $default(_that.id,_that.deviceId,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? deviceId,  String? status)  $default,) {final _that = this;
switch (_that) {
case _Data10():
return $default(_that.id,_that.deviceId,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? deviceId,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _Data10() when $default != null:
return $default(_that.id,_that.deviceId,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data10 implements Data10 {
  const _Data10({this.id, this.deviceId, this.status});
  factory _Data10.fromJson(Map<String, dynamic> json) => _$Data10FromJson(json);

@override final  String? id;
@override final  String? deviceId;
@override final  String? status;

/// Create a copy of Data10
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Data10CopyWith<_Data10> get copyWith => __$Data10CopyWithImpl<_Data10>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Data10ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data10&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceId,status);

@override
String toString() {
  return 'Data10(id: $id, deviceId: $deviceId, status: $status)';
}


}

/// @nodoc
abstract mixin class _$Data10CopyWith<$Res> implements $Data10CopyWith<$Res> {
  factory _$Data10CopyWith(_Data10 value, $Res Function(_Data10) _then) = __$Data10CopyWithImpl;
@override @useResult
$Res call({
 String? id, String? deviceId, String? status
});




}
/// @nodoc
class __$Data10CopyWithImpl<$Res>
    implements _$Data10CopyWith<$Res> {
  __$Data10CopyWithImpl(this._self, this._then);

  final _Data10 _self;
  final $Res Function(_Data10) _then;

/// Create a copy of Data10
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? deviceId = freezed,Object? status = freezed,}) {
  return _then(_Data10(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
