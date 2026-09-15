// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inspection_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InspectionRecord {

 Map<String, String>? get answers; String? get source; bool? get complete; bool? get billRequired;
/// Create a copy of InspectionRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InspectionRecordCopyWith<InspectionRecord> get copyWith => _$InspectionRecordCopyWithImpl<InspectionRecord>(this as InspectionRecord, _$identity);

  /// Serializes this InspectionRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InspectionRecord&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.source, source) || other.source == source)&&(identical(other.complete, complete) || other.complete == complete)&&(identical(other.billRequired, billRequired) || other.billRequired == billRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(answers),source,complete,billRequired);

@override
String toString() {
  return 'InspectionRecord(answers: $answers, source: $source, complete: $complete, billRequired: $billRequired)';
}


}

/// @nodoc
abstract mixin class $InspectionRecordCopyWith<$Res>  {
  factory $InspectionRecordCopyWith(InspectionRecord value, $Res Function(InspectionRecord) _then) = _$InspectionRecordCopyWithImpl;
@useResult
$Res call({
 Map<String, String>? answers, String? source, bool? complete, bool? billRequired
});




}
/// @nodoc
class _$InspectionRecordCopyWithImpl<$Res>
    implements $InspectionRecordCopyWith<$Res> {
  _$InspectionRecordCopyWithImpl(this._self, this._then);

  final InspectionRecord _self;
  final $Res Function(InspectionRecord) _then;

/// Create a copy of InspectionRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answers = freezed,Object? source = freezed,Object? complete = freezed,Object? billRequired = freezed,}) {
  return _then(_self.copyWith(
answers: freezed == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,complete: freezed == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as bool?,billRequired: freezed == billRequired ? _self.billRequired : billRequired // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [InspectionRecord].
extension InspectionRecordPatterns on InspectionRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InspectionRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InspectionRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InspectionRecord value)  $default,){
final _that = this;
switch (_that) {
case _InspectionRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InspectionRecord value)?  $default,){
final _that = this;
switch (_that) {
case _InspectionRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, String>? answers,  String? source,  bool? complete,  bool? billRequired)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InspectionRecord() when $default != null:
return $default(_that.answers,_that.source,_that.complete,_that.billRequired);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, String>? answers,  String? source,  bool? complete,  bool? billRequired)  $default,) {final _that = this;
switch (_that) {
case _InspectionRecord():
return $default(_that.answers,_that.source,_that.complete,_that.billRequired);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, String>? answers,  String? source,  bool? complete,  bool? billRequired)?  $default,) {final _that = this;
switch (_that) {
case _InspectionRecord() when $default != null:
return $default(_that.answers,_that.source,_that.complete,_that.billRequired);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InspectionRecord implements InspectionRecord {
  const _InspectionRecord({final  Map<String, String>? answers, this.source, this.complete, this.billRequired}): _answers = answers;
  factory _InspectionRecord.fromJson(Map<String, dynamic> json) => _$InspectionRecordFromJson(json);

 final  Map<String, String>? _answers;
@override Map<String, String>? get answers {
  final value = _answers;
  if (value == null) return null;
  if (_answers is EqualUnmodifiableMapView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? source;
@override final  bool? complete;
@override final  bool? billRequired;

/// Create a copy of InspectionRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InspectionRecordCopyWith<_InspectionRecord> get copyWith => __$InspectionRecordCopyWithImpl<_InspectionRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InspectionRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InspectionRecord&&const DeepCollectionEquality().equals(other._answers, _answers)&&(identical(other.source, source) || other.source == source)&&(identical(other.complete, complete) || other.complete == complete)&&(identical(other.billRequired, billRequired) || other.billRequired == billRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_answers),source,complete,billRequired);

@override
String toString() {
  return 'InspectionRecord(answers: $answers, source: $source, complete: $complete, billRequired: $billRequired)';
}


}

/// @nodoc
abstract mixin class _$InspectionRecordCopyWith<$Res> implements $InspectionRecordCopyWith<$Res> {
  factory _$InspectionRecordCopyWith(_InspectionRecord value, $Res Function(_InspectionRecord) _then) = __$InspectionRecordCopyWithImpl;
@override @useResult
$Res call({
 Map<String, String>? answers, String? source, bool? complete, bool? billRequired
});




}
/// @nodoc
class __$InspectionRecordCopyWithImpl<$Res>
    implements _$InspectionRecordCopyWith<$Res> {
  __$InspectionRecordCopyWithImpl(this._self, this._then);

  final _InspectionRecord _self;
  final $Res Function(_InspectionRecord) _then;

/// Create a copy of InspectionRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answers = freezed,Object? source = freezed,Object? complete = freezed,Object? billRequired = freezed,}) {
  return _then(_InspectionRecord(
answers: freezed == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,complete: freezed == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as bool?,billRequired: freezed == billRequired ? _self.billRequired : billRequired // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
