// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_assign_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportTicketAssignWrite {

 String get ownerAccountId;
/// Create a copy of SupportTicketAssignWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportTicketAssignWriteCopyWith<SupportTicketAssignWrite> get copyWith => _$SupportTicketAssignWriteCopyWithImpl<SupportTicketAssignWrite>(this as SupportTicketAssignWrite, _$identity);

  /// Serializes this SupportTicketAssignWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportTicketAssignWrite&&(identical(other.ownerAccountId, ownerAccountId) || other.ownerAccountId == ownerAccountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ownerAccountId);

@override
String toString() {
  return 'SupportTicketAssignWrite(ownerAccountId: $ownerAccountId)';
}


}

/// @nodoc
abstract mixin class $SupportTicketAssignWriteCopyWith<$Res>  {
  factory $SupportTicketAssignWriteCopyWith(SupportTicketAssignWrite value, $Res Function(SupportTicketAssignWrite) _then) = _$SupportTicketAssignWriteCopyWithImpl;
@useResult
$Res call({
 String ownerAccountId
});




}
/// @nodoc
class _$SupportTicketAssignWriteCopyWithImpl<$Res>
    implements $SupportTicketAssignWriteCopyWith<$Res> {
  _$SupportTicketAssignWriteCopyWithImpl(this._self, this._then);

  final SupportTicketAssignWrite _self;
  final $Res Function(SupportTicketAssignWrite) _then;

/// Create a copy of SupportTicketAssignWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ownerAccountId = null,}) {
  return _then(_self.copyWith(
ownerAccountId: null == ownerAccountId ? _self.ownerAccountId : ownerAccountId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportTicketAssignWrite].
extension SupportTicketAssignWritePatterns on SupportTicketAssignWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportTicketAssignWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportTicketAssignWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportTicketAssignWrite value)  $default,){
final _that = this;
switch (_that) {
case _SupportTicketAssignWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportTicketAssignWrite value)?  $default,){
final _that = this;
switch (_that) {
case _SupportTicketAssignWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ownerAccountId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportTicketAssignWrite() when $default != null:
return $default(_that.ownerAccountId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ownerAccountId)  $default,) {final _that = this;
switch (_that) {
case _SupportTicketAssignWrite():
return $default(_that.ownerAccountId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ownerAccountId)?  $default,) {final _that = this;
switch (_that) {
case _SupportTicketAssignWrite() when $default != null:
return $default(_that.ownerAccountId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportTicketAssignWrite implements SupportTicketAssignWrite {
  const _SupportTicketAssignWrite({required this.ownerAccountId});
  factory _SupportTicketAssignWrite.fromJson(Map<String, dynamic> json) => _$SupportTicketAssignWriteFromJson(json);

@override final  String ownerAccountId;

/// Create a copy of SupportTicketAssignWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportTicketAssignWriteCopyWith<_SupportTicketAssignWrite> get copyWith => __$SupportTicketAssignWriteCopyWithImpl<_SupportTicketAssignWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportTicketAssignWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportTicketAssignWrite&&(identical(other.ownerAccountId, ownerAccountId) || other.ownerAccountId == ownerAccountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ownerAccountId);

@override
String toString() {
  return 'SupportTicketAssignWrite(ownerAccountId: $ownerAccountId)';
}


}

/// @nodoc
abstract mixin class _$SupportTicketAssignWriteCopyWith<$Res> implements $SupportTicketAssignWriteCopyWith<$Res> {
  factory _$SupportTicketAssignWriteCopyWith(_SupportTicketAssignWrite value, $Res Function(_SupportTicketAssignWrite) _then) = __$SupportTicketAssignWriteCopyWithImpl;
@override @useResult
$Res call({
 String ownerAccountId
});




}
/// @nodoc
class __$SupportTicketAssignWriteCopyWithImpl<$Res>
    implements _$SupportTicketAssignWriteCopyWith<$Res> {
  __$SupportTicketAssignWriteCopyWithImpl(this._self, this._then);

  final _SupportTicketAssignWrite _self;
  final $Res Function(_SupportTicketAssignWrite) _then;

/// Create a copy of SupportTicketAssignWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ownerAccountId = null,}) {
  return _then(_SupportTicketAssignWrite(
ownerAccountId: null == ownerAccountId ? _self.ownerAccountId : ownerAccountId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
