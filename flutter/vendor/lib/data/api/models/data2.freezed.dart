// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Data2 {

 int? get availablePaise; int? get reservedPaise; int? get processingPaise; bool? get replayed; String? get reservationId; String? get status;
/// Create a copy of Data2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Data2CopyWith<Data2> get copyWith => _$Data2CopyWithImpl<Data2>(this as Data2, _$identity);

  /// Serializes this Data2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data2&&(identical(other.availablePaise, availablePaise) || other.availablePaise == availablePaise)&&(identical(other.reservedPaise, reservedPaise) || other.reservedPaise == reservedPaise)&&(identical(other.processingPaise, processingPaise) || other.processingPaise == processingPaise)&&(identical(other.replayed, replayed) || other.replayed == replayed)&&(identical(other.reservationId, reservationId) || other.reservationId == reservationId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,availablePaise,reservedPaise,processingPaise,replayed,reservationId,status);

@override
String toString() {
  return 'Data2(availablePaise: $availablePaise, reservedPaise: $reservedPaise, processingPaise: $processingPaise, replayed: $replayed, reservationId: $reservationId, status: $status)';
}


}

/// @nodoc
abstract mixin class $Data2CopyWith<$Res>  {
  factory $Data2CopyWith(Data2 value, $Res Function(Data2) _then) = _$Data2CopyWithImpl;
@useResult
$Res call({
 int? availablePaise, int? reservedPaise, int? processingPaise, bool? replayed, String? reservationId, String? status
});




}
/// @nodoc
class _$Data2CopyWithImpl<$Res>
    implements $Data2CopyWith<$Res> {
  _$Data2CopyWithImpl(this._self, this._then);

  final Data2 _self;
  final $Res Function(Data2) _then;

/// Create a copy of Data2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? availablePaise = freezed,Object? reservedPaise = freezed,Object? processingPaise = freezed,Object? replayed = freezed,Object? reservationId = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
availablePaise: freezed == availablePaise ? _self.availablePaise : availablePaise // ignore: cast_nullable_to_non_nullable
as int?,reservedPaise: freezed == reservedPaise ? _self.reservedPaise : reservedPaise // ignore: cast_nullable_to_non_nullable
as int?,processingPaise: freezed == processingPaise ? _self.processingPaise : processingPaise // ignore: cast_nullable_to_non_nullable
as int?,replayed: freezed == replayed ? _self.replayed : replayed // ignore: cast_nullable_to_non_nullable
as bool?,reservationId: freezed == reservationId ? _self.reservationId : reservationId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Data2].
extension Data2Patterns on Data2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data2 value)  $default,){
final _that = this;
switch (_that) {
case _Data2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data2 value)?  $default,){
final _that = this;
switch (_that) {
case _Data2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? availablePaise,  int? reservedPaise,  int? processingPaise,  bool? replayed,  String? reservationId,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data2() when $default != null:
return $default(_that.availablePaise,_that.reservedPaise,_that.processingPaise,_that.replayed,_that.reservationId,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? availablePaise,  int? reservedPaise,  int? processingPaise,  bool? replayed,  String? reservationId,  String? status)  $default,) {final _that = this;
switch (_that) {
case _Data2():
return $default(_that.availablePaise,_that.reservedPaise,_that.processingPaise,_that.replayed,_that.reservationId,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? availablePaise,  int? reservedPaise,  int? processingPaise,  bool? replayed,  String? reservationId,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _Data2() when $default != null:
return $default(_that.availablePaise,_that.reservedPaise,_that.processingPaise,_that.replayed,_that.reservationId,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data2 implements Data2 {
  const _Data2({this.availablePaise, this.reservedPaise, this.processingPaise, this.replayed, this.reservationId, this.status});
  factory _Data2.fromJson(Map<String, dynamic> json) => _$Data2FromJson(json);

@override final  int? availablePaise;
@override final  int? reservedPaise;
@override final  int? processingPaise;
@override final  bool? replayed;
@override final  String? reservationId;
@override final  String? status;

/// Create a copy of Data2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Data2CopyWith<_Data2> get copyWith => __$Data2CopyWithImpl<_Data2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Data2ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data2&&(identical(other.availablePaise, availablePaise) || other.availablePaise == availablePaise)&&(identical(other.reservedPaise, reservedPaise) || other.reservedPaise == reservedPaise)&&(identical(other.processingPaise, processingPaise) || other.processingPaise == processingPaise)&&(identical(other.replayed, replayed) || other.replayed == replayed)&&(identical(other.reservationId, reservationId) || other.reservationId == reservationId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,availablePaise,reservedPaise,processingPaise,replayed,reservationId,status);

@override
String toString() {
  return 'Data2(availablePaise: $availablePaise, reservedPaise: $reservedPaise, processingPaise: $processingPaise, replayed: $replayed, reservationId: $reservationId, status: $status)';
}


}

/// @nodoc
abstract mixin class _$Data2CopyWith<$Res> implements $Data2CopyWith<$Res> {
  factory _$Data2CopyWith(_Data2 value, $Res Function(_Data2) _then) = __$Data2CopyWithImpl;
@override @useResult
$Res call({
 int? availablePaise, int? reservedPaise, int? processingPaise, bool? replayed, String? reservationId, String? status
});




}
/// @nodoc
class __$Data2CopyWithImpl<$Res>
    implements _$Data2CopyWith<$Res> {
  __$Data2CopyWithImpl(this._self, this._then);

  final _Data2 _self;
  final $Res Function(_Data2) _then;

/// Create a copy of Data2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? availablePaise = freezed,Object? reservedPaise = freezed,Object? processingPaise = freezed,Object? replayed = freezed,Object? reservationId = freezed,Object? status = freezed,}) {
  return _then(_Data2(
availablePaise: freezed == availablePaise ? _self.availablePaise : availablePaise // ignore: cast_nullable_to_non_nullable
as int?,reservedPaise: freezed == reservedPaise ? _self.reservedPaise : reservedPaise // ignore: cast_nullable_to_non_nullable
as int?,processingPaise: freezed == processingPaise ? _self.processingPaise : processingPaise // ignore: cast_nullable_to_non_nullable
as int?,replayed: freezed == replayed ? _self.replayed : replayed // ignore: cast_nullable_to_non_nullable
as bool?,reservationId: freezed == reservationId ? _self.reservationId : reservationId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
