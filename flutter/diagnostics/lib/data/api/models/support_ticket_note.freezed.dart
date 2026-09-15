// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportTicketNote {

 String? get id; String? get authorAccountId; String? get authorRole; String? get body; DateTime? get createdAt;
/// Create a copy of SupportTicketNote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportTicketNoteCopyWith<SupportTicketNote> get copyWith => _$SupportTicketNoteCopyWithImpl<SupportTicketNote>(this as SupportTicketNote, _$identity);

  /// Serializes this SupportTicketNote to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportTicketNote&&(identical(other.id, id) || other.id == id)&&(identical(other.authorAccountId, authorAccountId) || other.authorAccountId == authorAccountId)&&(identical(other.authorRole, authorRole) || other.authorRole == authorRole)&&(identical(other.body, body) || other.body == body)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,authorAccountId,authorRole,body,createdAt);

@override
String toString() {
  return 'SupportTicketNote(id: $id, authorAccountId: $authorAccountId, authorRole: $authorRole, body: $body, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SupportTicketNoteCopyWith<$Res>  {
  factory $SupportTicketNoteCopyWith(SupportTicketNote value, $Res Function(SupportTicketNote) _then) = _$SupportTicketNoteCopyWithImpl;
@useResult
$Res call({
 String? id, String? authorAccountId, String? authorRole, String? body, DateTime? createdAt
});




}
/// @nodoc
class _$SupportTicketNoteCopyWithImpl<$Res>
    implements $SupportTicketNoteCopyWith<$Res> {
  _$SupportTicketNoteCopyWithImpl(this._self, this._then);

  final SupportTicketNote _self;
  final $Res Function(SupportTicketNote) _then;

/// Create a copy of SupportTicketNote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? authorAccountId = freezed,Object? authorRole = freezed,Object? body = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,authorAccountId: freezed == authorAccountId ? _self.authorAccountId : authorAccountId // ignore: cast_nullable_to_non_nullable
as String?,authorRole: freezed == authorRole ? _self.authorRole : authorRole // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportTicketNote].
extension SupportTicketNotePatterns on SupportTicketNote {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportTicketNote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportTicketNote() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportTicketNote value)  $default,){
final _that = this;
switch (_that) {
case _SupportTicketNote():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportTicketNote value)?  $default,){
final _that = this;
switch (_that) {
case _SupportTicketNote() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? authorAccountId,  String? authorRole,  String? body,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportTicketNote() when $default != null:
return $default(_that.id,_that.authorAccountId,_that.authorRole,_that.body,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? authorAccountId,  String? authorRole,  String? body,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _SupportTicketNote():
return $default(_that.id,_that.authorAccountId,_that.authorRole,_that.body,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? authorAccountId,  String? authorRole,  String? body,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SupportTicketNote() when $default != null:
return $default(_that.id,_that.authorAccountId,_that.authorRole,_that.body,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportTicketNote implements SupportTicketNote {
  const _SupportTicketNote({this.id, this.authorAccountId, this.authorRole, this.body, this.createdAt});
  factory _SupportTicketNote.fromJson(Map<String, dynamic> json) => _$SupportTicketNoteFromJson(json);

@override final  String? id;
@override final  String? authorAccountId;
@override final  String? authorRole;
@override final  String? body;
@override final  DateTime? createdAt;

/// Create a copy of SupportTicketNote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportTicketNoteCopyWith<_SupportTicketNote> get copyWith => __$SupportTicketNoteCopyWithImpl<_SupportTicketNote>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportTicketNoteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportTicketNote&&(identical(other.id, id) || other.id == id)&&(identical(other.authorAccountId, authorAccountId) || other.authorAccountId == authorAccountId)&&(identical(other.authorRole, authorRole) || other.authorRole == authorRole)&&(identical(other.body, body) || other.body == body)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,authorAccountId,authorRole,body,createdAt);

@override
String toString() {
  return 'SupportTicketNote(id: $id, authorAccountId: $authorAccountId, authorRole: $authorRole, body: $body, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SupportTicketNoteCopyWith<$Res> implements $SupportTicketNoteCopyWith<$Res> {
  factory _$SupportTicketNoteCopyWith(_SupportTicketNote value, $Res Function(_SupportTicketNote) _then) = __$SupportTicketNoteCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? authorAccountId, String? authorRole, String? body, DateTime? createdAt
});




}
/// @nodoc
class __$SupportTicketNoteCopyWithImpl<$Res>
    implements _$SupportTicketNoteCopyWith<$Res> {
  __$SupportTicketNoteCopyWithImpl(this._self, this._then);

  final _SupportTicketNote _self;
  final $Res Function(_SupportTicketNote) _then;

/// Create a copy of SupportTicketNote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? authorAccountId = freezed,Object? authorRole = freezed,Object? body = freezed,Object? createdAt = freezed,}) {
  return _then(_SupportTicketNote(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,authorAccountId: freezed == authorAccountId ? _self.authorAccountId : authorAccountId // ignore: cast_nullable_to_non_nullable
as String?,authorRole: freezed == authorRole ? _self.authorRole : authorRole // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
