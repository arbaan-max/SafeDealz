// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_note_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportTicketNoteWrite {

 String get body;
/// Create a copy of SupportTicketNoteWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportTicketNoteWriteCopyWith<SupportTicketNoteWrite> get copyWith => _$SupportTicketNoteWriteCopyWithImpl<SupportTicketNoteWrite>(this as SupportTicketNoteWrite, _$identity);

  /// Serializes this SupportTicketNoteWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportTicketNoteWrite&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body);

@override
String toString() {
  return 'SupportTicketNoteWrite(body: $body)';
}


}

/// @nodoc
abstract mixin class $SupportTicketNoteWriteCopyWith<$Res>  {
  factory $SupportTicketNoteWriteCopyWith(SupportTicketNoteWrite value, $Res Function(SupportTicketNoteWrite) _then) = _$SupportTicketNoteWriteCopyWithImpl;
@useResult
$Res call({
 String body
});




}
/// @nodoc
class _$SupportTicketNoteWriteCopyWithImpl<$Res>
    implements $SupportTicketNoteWriteCopyWith<$Res> {
  _$SupportTicketNoteWriteCopyWithImpl(this._self, this._then);

  final SupportTicketNoteWrite _self;
  final $Res Function(SupportTicketNoteWrite) _then;

/// Create a copy of SupportTicketNoteWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? body = null,}) {
  return _then(_self.copyWith(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportTicketNoteWrite].
extension SupportTicketNoteWritePatterns on SupportTicketNoteWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportTicketNoteWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportTicketNoteWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportTicketNoteWrite value)  $default,){
final _that = this;
switch (_that) {
case _SupportTicketNoteWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportTicketNoteWrite value)?  $default,){
final _that = this;
switch (_that) {
case _SupportTicketNoteWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportTicketNoteWrite() when $default != null:
return $default(_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String body)  $default,) {final _that = this;
switch (_that) {
case _SupportTicketNoteWrite():
return $default(_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String body)?  $default,) {final _that = this;
switch (_that) {
case _SupportTicketNoteWrite() when $default != null:
return $default(_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportTicketNoteWrite implements SupportTicketNoteWrite {
  const _SupportTicketNoteWrite({required this.body});
  factory _SupportTicketNoteWrite.fromJson(Map<String, dynamic> json) => _$SupportTicketNoteWriteFromJson(json);

@override final  String body;

/// Create a copy of SupportTicketNoteWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportTicketNoteWriteCopyWith<_SupportTicketNoteWrite> get copyWith => __$SupportTicketNoteWriteCopyWithImpl<_SupportTicketNoteWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportTicketNoteWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportTicketNoteWrite&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body);

@override
String toString() {
  return 'SupportTicketNoteWrite(body: $body)';
}


}

/// @nodoc
abstract mixin class _$SupportTicketNoteWriteCopyWith<$Res> implements $SupportTicketNoteWriteCopyWith<$Res> {
  factory _$SupportTicketNoteWriteCopyWith(_SupportTicketNoteWrite value, $Res Function(_SupportTicketNoteWrite) _then) = __$SupportTicketNoteWriteCopyWithImpl;
@override @useResult
$Res call({
 String body
});




}
/// @nodoc
class __$SupportTicketNoteWriteCopyWithImpl<$Res>
    implements _$SupportTicketNoteWriteCopyWith<$Res> {
  __$SupportTicketNoteWriteCopyWithImpl(this._self, this._then);

  final _SupportTicketNoteWrite _self;
  final $Res Function(_SupportTicketNoteWrite) _then;

/// Create a copy of SupportTicketNoteWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? body = null,}) {
  return _then(_SupportTicketNoteWrite(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
