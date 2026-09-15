// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_evidence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogEvidence {

 String get purpose; String get label; bool? get billOnly;
/// Create a copy of CatalogEvidence
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogEvidenceCopyWith<CatalogEvidence> get copyWith => _$CatalogEvidenceCopyWithImpl<CatalogEvidence>(this as CatalogEvidence, _$identity);

  /// Serializes this CatalogEvidence to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogEvidence&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.label, label) || other.label == label)&&(identical(other.billOnly, billOnly) || other.billOnly == billOnly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,purpose,label,billOnly);

@override
String toString() {
  return 'CatalogEvidence(purpose: $purpose, label: $label, billOnly: $billOnly)';
}


}

/// @nodoc
abstract mixin class $CatalogEvidenceCopyWith<$Res>  {
  factory $CatalogEvidenceCopyWith(CatalogEvidence value, $Res Function(CatalogEvidence) _then) = _$CatalogEvidenceCopyWithImpl;
@useResult
$Res call({
 String purpose, String label, bool? billOnly
});




}
/// @nodoc
class _$CatalogEvidenceCopyWithImpl<$Res>
    implements $CatalogEvidenceCopyWith<$Res> {
  _$CatalogEvidenceCopyWithImpl(this._self, this._then);

  final CatalogEvidence _self;
  final $Res Function(CatalogEvidence) _then;

/// Create a copy of CatalogEvidence
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? purpose = null,Object? label = null,Object? billOnly = freezed,}) {
  return _then(_self.copyWith(
purpose: null == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,billOnly: freezed == billOnly ? _self.billOnly : billOnly // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogEvidence].
extension CatalogEvidencePatterns on CatalogEvidence {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogEvidence value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogEvidence() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogEvidence value)  $default,){
final _that = this;
switch (_that) {
case _CatalogEvidence():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogEvidence value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogEvidence() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String purpose,  String label,  bool? billOnly)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogEvidence() when $default != null:
return $default(_that.purpose,_that.label,_that.billOnly);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String purpose,  String label,  bool? billOnly)  $default,) {final _that = this;
switch (_that) {
case _CatalogEvidence():
return $default(_that.purpose,_that.label,_that.billOnly);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String purpose,  String label,  bool? billOnly)?  $default,) {final _that = this;
switch (_that) {
case _CatalogEvidence() when $default != null:
return $default(_that.purpose,_that.label,_that.billOnly);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatalogEvidence implements CatalogEvidence {
  const _CatalogEvidence({required this.purpose, required this.label, this.billOnly});
  factory _CatalogEvidence.fromJson(Map<String, dynamic> json) => _$CatalogEvidenceFromJson(json);

@override final  String purpose;
@override final  String label;
@override final  bool? billOnly;

/// Create a copy of CatalogEvidence
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogEvidenceCopyWith<_CatalogEvidence> get copyWith => __$CatalogEvidenceCopyWithImpl<_CatalogEvidence>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogEvidenceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogEvidence&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.label, label) || other.label == label)&&(identical(other.billOnly, billOnly) || other.billOnly == billOnly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,purpose,label,billOnly);

@override
String toString() {
  return 'CatalogEvidence(purpose: $purpose, label: $label, billOnly: $billOnly)';
}


}

/// @nodoc
abstract mixin class _$CatalogEvidenceCopyWith<$Res> implements $CatalogEvidenceCopyWith<$Res> {
  factory _$CatalogEvidenceCopyWith(_CatalogEvidence value, $Res Function(_CatalogEvidence) _then) = __$CatalogEvidenceCopyWithImpl;
@override @useResult
$Res call({
 String purpose, String label, bool? billOnly
});




}
/// @nodoc
class __$CatalogEvidenceCopyWithImpl<$Res>
    implements _$CatalogEvidenceCopyWith<$Res> {
  __$CatalogEvidenceCopyWithImpl(this._self, this._then);

  final _CatalogEvidence _self;
  final $Res Function(_CatalogEvidence) _then;

/// Create a copy of CatalogEvidence
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? purpose = null,Object? label = null,Object? billOnly = freezed,}) {
  return _then(_CatalogEvidence(
purpose: null == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,billOnly: freezed == billOnly ? _self.billOnly : billOnly // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
