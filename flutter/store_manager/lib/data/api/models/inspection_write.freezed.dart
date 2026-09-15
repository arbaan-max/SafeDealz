// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inspection_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InspectionWrite {

 Map<String, String>? get answers; bool? get complete;
/// Create a copy of InspectionWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InspectionWriteCopyWith<InspectionWrite> get copyWith => _$InspectionWriteCopyWithImpl<InspectionWrite>(this as InspectionWrite, _$identity);

  /// Serializes this InspectionWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InspectionWrite&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.complete, complete) || other.complete == complete));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(answers),complete);

@override
String toString() {
  return 'InspectionWrite(answers: $answers, complete: $complete)';
}


}

/// @nodoc
abstract mixin class $InspectionWriteCopyWith<$Res>  {
  factory $InspectionWriteCopyWith(InspectionWrite value, $Res Function(InspectionWrite) _then) = _$InspectionWriteCopyWithImpl;
@useResult
$Res call({
 Map<String, String>? answers, bool? complete
});




}
/// @nodoc
class _$InspectionWriteCopyWithImpl<$Res>
    implements $InspectionWriteCopyWith<$Res> {
  _$InspectionWriteCopyWithImpl(this._self, this._then);

  final InspectionWrite _self;
  final $Res Function(InspectionWrite) _then;

/// Create a copy of InspectionWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answers = freezed,Object? complete = freezed,}) {
  return _then(_self.copyWith(
answers: freezed == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,complete: freezed == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [InspectionWrite].
extension InspectionWritePatterns on InspectionWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InspectionWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InspectionWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InspectionWrite value)  $default,){
final _that = this;
switch (_that) {
case _InspectionWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InspectionWrite value)?  $default,){
final _that = this;
switch (_that) {
case _InspectionWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, String>? answers,  bool? complete)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InspectionWrite() when $default != null:
return $default(_that.answers,_that.complete);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, String>? answers,  bool? complete)  $default,) {final _that = this;
switch (_that) {
case _InspectionWrite():
return $default(_that.answers,_that.complete);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, String>? answers,  bool? complete)?  $default,) {final _that = this;
switch (_that) {
case _InspectionWrite() when $default != null:
return $default(_that.answers,_that.complete);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InspectionWrite implements InspectionWrite {
  const _InspectionWrite({final  Map<String, String>? answers, this.complete}): _answers = answers;
  factory _InspectionWrite.fromJson(Map<String, dynamic> json) => _$InspectionWriteFromJson(json);

 final  Map<String, String>? _answers;
@override Map<String, String>? get answers {
  final value = _answers;
  if (value == null) return null;
  if (_answers is EqualUnmodifiableMapView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  bool? complete;

/// Create a copy of InspectionWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InspectionWriteCopyWith<_InspectionWrite> get copyWith => __$InspectionWriteCopyWithImpl<_InspectionWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InspectionWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InspectionWrite&&const DeepCollectionEquality().equals(other._answers, _answers)&&(identical(other.complete, complete) || other.complete == complete));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_answers),complete);

@override
String toString() {
  return 'InspectionWrite(answers: $answers, complete: $complete)';
}


}

/// @nodoc
abstract mixin class _$InspectionWriteCopyWith<$Res> implements $InspectionWriteCopyWith<$Res> {
  factory _$InspectionWriteCopyWith(_InspectionWrite value, $Res Function(_InspectionWrite) _then) = __$InspectionWriteCopyWithImpl;
@override @useResult
$Res call({
 Map<String, String>? answers, bool? complete
});




}
/// @nodoc
class __$InspectionWriteCopyWithImpl<$Res>
    implements _$InspectionWriteCopyWith<$Res> {
  __$InspectionWriteCopyWithImpl(this._self, this._then);

  final _InspectionWrite _self;
  final $Res Function(_InspectionWrite) _then;

/// Create a copy of InspectionWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answers = freezed,Object? complete = freezed,}) {
  return _then(_InspectionWrite(
answers: freezed == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,complete: freezed == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
