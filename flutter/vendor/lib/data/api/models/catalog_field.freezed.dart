// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogField {

 String get key; String get label; List<String> get options; bool? get appleOnly;
/// Create a copy of CatalogField
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogFieldCopyWith<CatalogField> get copyWith => _$CatalogFieldCopyWithImpl<CatalogField>(this as CatalogField, _$identity);

  /// Serializes this CatalogField to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogField&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.appleOnly, appleOnly) || other.appleOnly == appleOnly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label,const DeepCollectionEquality().hash(options),appleOnly);

@override
String toString() {
  return 'CatalogField(key: $key, label: $label, options: $options, appleOnly: $appleOnly)';
}


}

/// @nodoc
abstract mixin class $CatalogFieldCopyWith<$Res>  {
  factory $CatalogFieldCopyWith(CatalogField value, $Res Function(CatalogField) _then) = _$CatalogFieldCopyWithImpl;
@useResult
$Res call({
 String key, String label, List<String> options, bool? appleOnly
});




}
/// @nodoc
class _$CatalogFieldCopyWithImpl<$Res>
    implements $CatalogFieldCopyWith<$Res> {
  _$CatalogFieldCopyWithImpl(this._self, this._then);

  final CatalogField _self;
  final $Res Function(CatalogField) _then;

/// Create a copy of CatalogField
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? label = null,Object? options = null,Object? appleOnly = freezed,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>,appleOnly: freezed == appleOnly ? _self.appleOnly : appleOnly // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogField].
extension CatalogFieldPatterns on CatalogField {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogField value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogField() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogField value)  $default,){
final _that = this;
switch (_that) {
case _CatalogField():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogField value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogField() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String label,  List<String> options,  bool? appleOnly)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogField() when $default != null:
return $default(_that.key,_that.label,_that.options,_that.appleOnly);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String label,  List<String> options,  bool? appleOnly)  $default,) {final _that = this;
switch (_that) {
case _CatalogField():
return $default(_that.key,_that.label,_that.options,_that.appleOnly);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String label,  List<String> options,  bool? appleOnly)?  $default,) {final _that = this;
switch (_that) {
case _CatalogField() when $default != null:
return $default(_that.key,_that.label,_that.options,_that.appleOnly);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatalogField implements CatalogField {
  const _CatalogField({required this.key, required this.label, required final  List<String> options, this.appleOnly}): _options = options;
  factory _CatalogField.fromJson(Map<String, dynamic> json) => _$CatalogFieldFromJson(json);

@override final  String key;
@override final  String label;
 final  List<String> _options;
@override List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

@override final  bool? appleOnly;

/// Create a copy of CatalogField
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogFieldCopyWith<_CatalogField> get copyWith => __$CatalogFieldCopyWithImpl<_CatalogField>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogFieldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogField&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.appleOnly, appleOnly) || other.appleOnly == appleOnly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label,const DeepCollectionEquality().hash(_options),appleOnly);

@override
String toString() {
  return 'CatalogField(key: $key, label: $label, options: $options, appleOnly: $appleOnly)';
}


}

/// @nodoc
abstract mixin class _$CatalogFieldCopyWith<$Res> implements $CatalogFieldCopyWith<$Res> {
  factory _$CatalogFieldCopyWith(_CatalogField value, $Res Function(_CatalogField) _then) = __$CatalogFieldCopyWithImpl;
@override @useResult
$Res call({
 String key, String label, List<String> options, bool? appleOnly
});




}
/// @nodoc
class __$CatalogFieldCopyWithImpl<$Res>
    implements _$CatalogFieldCopyWith<$Res> {
  __$CatalogFieldCopyWithImpl(this._self, this._then);

  final _CatalogField _self;
  final $Res Function(_CatalogField) _then;

/// Create a copy of CatalogField
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? label = null,Object? options = null,Object? appleOnly = freezed,}) {
  return _then(_CatalogField(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,appleOnly: freezed == appleOnly ? _self.appleOnly : appleOnly // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
