// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_attention.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OverviewAttention {

 OverviewAttentionKind? get kind; String? get id; String? get label;
/// Create a copy of OverviewAttention
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverviewAttentionCopyWith<OverviewAttention> get copyWith => _$OverviewAttentionCopyWithImpl<OverviewAttention>(this as OverviewAttention, _$identity);

  /// Serializes this OverviewAttention to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverviewAttention&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,id,label);

@override
String toString() {
  return 'OverviewAttention(kind: $kind, id: $id, label: $label)';
}


}

/// @nodoc
abstract mixin class $OverviewAttentionCopyWith<$Res>  {
  factory $OverviewAttentionCopyWith(OverviewAttention value, $Res Function(OverviewAttention) _then) = _$OverviewAttentionCopyWithImpl;
@useResult
$Res call({
 OverviewAttentionKind? kind, String? id, String? label
});




}
/// @nodoc
class _$OverviewAttentionCopyWithImpl<$Res>
    implements $OverviewAttentionCopyWith<$Res> {
  _$OverviewAttentionCopyWithImpl(this._self, this._then);

  final OverviewAttention _self;
  final $Res Function(OverviewAttention) _then;

/// Create a copy of OverviewAttention
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = freezed,Object? id = freezed,Object? label = freezed,}) {
  return _then(_self.copyWith(
kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as OverviewAttentionKind?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OverviewAttention].
extension OverviewAttentionPatterns on OverviewAttention {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OverviewAttention value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OverviewAttention() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OverviewAttention value)  $default,){
final _that = this;
switch (_that) {
case _OverviewAttention():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OverviewAttention value)?  $default,){
final _that = this;
switch (_that) {
case _OverviewAttention() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OverviewAttentionKind? kind,  String? id,  String? label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OverviewAttention() when $default != null:
return $default(_that.kind,_that.id,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OverviewAttentionKind? kind,  String? id,  String? label)  $default,) {final _that = this;
switch (_that) {
case _OverviewAttention():
return $default(_that.kind,_that.id,_that.label);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OverviewAttentionKind? kind,  String? id,  String? label)?  $default,) {final _that = this;
switch (_that) {
case _OverviewAttention() when $default != null:
return $default(_that.kind,_that.id,_that.label);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OverviewAttention implements OverviewAttention {
  const _OverviewAttention({this.kind, this.id, this.label});
  factory _OverviewAttention.fromJson(Map<String, dynamic> json) => _$OverviewAttentionFromJson(json);

@override final  OverviewAttentionKind? kind;
@override final  String? id;
@override final  String? label;

/// Create a copy of OverviewAttention
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverviewAttentionCopyWith<_OverviewAttention> get copyWith => __$OverviewAttentionCopyWithImpl<_OverviewAttention>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OverviewAttentionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverviewAttention&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,id,label);

@override
String toString() {
  return 'OverviewAttention(kind: $kind, id: $id, label: $label)';
}


}

/// @nodoc
abstract mixin class _$OverviewAttentionCopyWith<$Res> implements $OverviewAttentionCopyWith<$Res> {
  factory _$OverviewAttentionCopyWith(_OverviewAttention value, $Res Function(_OverviewAttention) _then) = __$OverviewAttentionCopyWithImpl;
@override @useResult
$Res call({
 OverviewAttentionKind? kind, String? id, String? label
});




}
/// @nodoc
class __$OverviewAttentionCopyWithImpl<$Res>
    implements _$OverviewAttentionCopyWith<$Res> {
  __$OverviewAttentionCopyWithImpl(this._self, this._then);

  final _OverviewAttention _self;
  final $Res Function(_OverviewAttention) _then;

/// Create a copy of OverviewAttention
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = freezed,Object? id = freezed,Object? label = freezed,}) {
  return _then(_OverviewAttention(
kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as OverviewAttentionKind?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
