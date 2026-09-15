// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_status_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportTicketStatusWrite {

 SupportTicketStatusWriteStatus get status; String? get note;
/// Create a copy of SupportTicketStatusWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportTicketStatusWriteCopyWith<SupportTicketStatusWrite> get copyWith => _$SupportTicketStatusWriteCopyWithImpl<SupportTicketStatusWrite>(this as SupportTicketStatusWrite, _$identity);

  /// Serializes this SupportTicketStatusWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportTicketStatusWrite&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,note);

@override
String toString() {
  return 'SupportTicketStatusWrite(status: $status, note: $note)';
}


}

/// @nodoc
abstract mixin class $SupportTicketStatusWriteCopyWith<$Res>  {
  factory $SupportTicketStatusWriteCopyWith(SupportTicketStatusWrite value, $Res Function(SupportTicketStatusWrite) _then) = _$SupportTicketStatusWriteCopyWithImpl;
@useResult
$Res call({
 SupportTicketStatusWriteStatus status, String? note
});




}
/// @nodoc
class _$SupportTicketStatusWriteCopyWithImpl<$Res>
    implements $SupportTicketStatusWriteCopyWith<$Res> {
  _$SupportTicketStatusWriteCopyWithImpl(this._self, this._then);

  final SupportTicketStatusWrite _self;
  final $Res Function(SupportTicketStatusWrite) _then;

/// Create a copy of SupportTicketStatusWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupportTicketStatusWriteStatus,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportTicketStatusWrite].
extension SupportTicketStatusWritePatterns on SupportTicketStatusWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportTicketStatusWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportTicketStatusWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportTicketStatusWrite value)  $default,){
final _that = this;
switch (_that) {
case _SupportTicketStatusWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportTicketStatusWrite value)?  $default,){
final _that = this;
switch (_that) {
case _SupportTicketStatusWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SupportTicketStatusWriteStatus status,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportTicketStatusWrite() when $default != null:
return $default(_that.status,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SupportTicketStatusWriteStatus status,  String? note)  $default,) {final _that = this;
switch (_that) {
case _SupportTicketStatusWrite():
return $default(_that.status,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SupportTicketStatusWriteStatus status,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _SupportTicketStatusWrite() when $default != null:
return $default(_that.status,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportTicketStatusWrite implements SupportTicketStatusWrite {
  const _SupportTicketStatusWrite({required this.status, this.note});
  factory _SupportTicketStatusWrite.fromJson(Map<String, dynamic> json) => _$SupportTicketStatusWriteFromJson(json);

@override final  SupportTicketStatusWriteStatus status;
@override final  String? note;

/// Create a copy of SupportTicketStatusWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportTicketStatusWriteCopyWith<_SupportTicketStatusWrite> get copyWith => __$SupportTicketStatusWriteCopyWithImpl<_SupportTicketStatusWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportTicketStatusWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportTicketStatusWrite&&(identical(other.status, status) || other.status == status)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,note);

@override
String toString() {
  return 'SupportTicketStatusWrite(status: $status, note: $note)';
}


}

/// @nodoc
abstract mixin class _$SupportTicketStatusWriteCopyWith<$Res> implements $SupportTicketStatusWriteCopyWith<$Res> {
  factory _$SupportTicketStatusWriteCopyWith(_SupportTicketStatusWrite value, $Res Function(_SupportTicketStatusWrite) _then) = __$SupportTicketStatusWriteCopyWithImpl;
@override @useResult
$Res call({
 SupportTicketStatusWriteStatus status, String? note
});




}
/// @nodoc
class __$SupportTicketStatusWriteCopyWithImpl<$Res>
    implements _$SupportTicketStatusWriteCopyWith<$Res> {
  __$SupportTicketStatusWriteCopyWithImpl(this._self, this._then);

  final _SupportTicketStatusWrite _self;
  final $Res Function(_SupportTicketStatusWrite) _then;

/// Create a copy of SupportTicketStatusWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? note = freezed,}) {
  return _then(_SupportTicketStatusWrite(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupportTicketStatusWriteStatus,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
