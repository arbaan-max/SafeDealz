// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogStep {

 String get title; List<String> get keys;
/// Create a copy of CatalogStep
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogStepCopyWith<CatalogStep> get copyWith => _$CatalogStepCopyWithImpl<CatalogStep>(this as CatalogStep, _$identity);

  /// Serializes this CatalogStep to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogStep&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.keys, keys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(keys));

@override
String toString() {
  return 'CatalogStep(title: $title, keys: $keys)';
}


}

/// @nodoc
abstract mixin class $CatalogStepCopyWith<$Res>  {
  factory $CatalogStepCopyWith(CatalogStep value, $Res Function(CatalogStep) _then) = _$CatalogStepCopyWithImpl;
@useResult
$Res call({
 String title, List<String> keys
});




}
/// @nodoc
class _$CatalogStepCopyWithImpl<$Res>
    implements $CatalogStepCopyWith<$Res> {
  _$CatalogStepCopyWithImpl(this._self, this._then);

  final CatalogStep _self;
  final $Res Function(CatalogStep) _then;

/// Create a copy of CatalogStep
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? keys = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,keys: null == keys ? _self.keys : keys // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogStep].
extension CatalogStepPatterns on CatalogStep {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogStep value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogStep() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogStep value)  $default,){
final _that = this;
switch (_that) {
case _CatalogStep():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogStep value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogStep() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  List<String> keys)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogStep() when $default != null:
return $default(_that.title,_that.keys);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  List<String> keys)  $default,) {final _that = this;
switch (_that) {
case _CatalogStep():
return $default(_that.title,_that.keys);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  List<String> keys)?  $default,) {final _that = this;
switch (_that) {
case _CatalogStep() when $default != null:
return $default(_that.title,_that.keys);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatalogStep implements CatalogStep {
  const _CatalogStep({required this.title, required final  List<String> keys}): _keys = keys;
  factory _CatalogStep.fromJson(Map<String, dynamic> json) => _$CatalogStepFromJson(json);

@override final  String title;
 final  List<String> _keys;
@override List<String> get keys {
  if (_keys is EqualUnmodifiableListView) return _keys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_keys);
}


/// Create a copy of CatalogStep
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogStepCopyWith<_CatalogStep> get copyWith => __$CatalogStepCopyWithImpl<_CatalogStep>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogStepToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogStep&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._keys, _keys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_keys));

@override
String toString() {
  return 'CatalogStep(title: $title, keys: $keys)';
}


}

/// @nodoc
abstract mixin class _$CatalogStepCopyWith<$Res> implements $CatalogStepCopyWith<$Res> {
  factory _$CatalogStepCopyWith(_CatalogStep value, $Res Function(_CatalogStep) _then) = __$CatalogStepCopyWithImpl;
@override @useResult
$Res call({
 String title, List<String> keys
});




}
/// @nodoc
class __$CatalogStepCopyWithImpl<$Res>
    implements _$CatalogStepCopyWith<$Res> {
  __$CatalogStepCopyWithImpl(this._self, this._then);

  final _CatalogStep _self;
  final $Res Function(_CatalogStep) _then;

/// Create a copy of CatalogStep
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? keys = null,}) {
  return _then(_CatalogStep(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,keys: null == keys ? _self._keys : keys // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
